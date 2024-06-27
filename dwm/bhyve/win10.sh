#!/bin/sh
CD=/ntfs-2TB/downloads/ISO/virtio-win-0.1.118.iso
HD=/bhyve/win10/win10.img
HD2=/home/dwm/windows10.img
USB="5/0/0"
UEFI=/home/dwm/BHYVE_BHF_UEFI.fd
#UEFI=/home/dwm/BHYVE_CODE.fd
#UEFI=/usr/local/share/uefi-firmware/BHYVE_UEFI_CODE.fd 
MEM=6G
VM="win10"
IF="tap0"
MAC="mac=00:A0:98:78:32:10"
DPY="w=1920,h=1080"



detach() {
echo stop

 devctl detach  -f pci0:0:20:0
 devctl set driver   pci0:0:20:0 xhci
 devctl attach pci0:0:20:0
 devctl detach -f  pci0:0:2:0
 devctl set driver pci0:0:2:0 vgapci
 devctl attach  pci0:0:2:0
echo stop 2
}


attach() {
echo start
 devctl detach pci0:0:20:0
 devctl set driver pci0:0:20:0 ppt
 devctl set driver pci0:0:2:0 vgapci
 devctl detach pci0:0:2:0
 devctl set driver pci0:0:2:0 ppt

}


detach_vgapci &
  sleep 2
  detach_xhci &
  sleep 2
  detach
  sleep 2
  attach

  ifconfig $IF up
while true
do
      bhyve \
      -c 4,sockets=2,cores=2 -S -A  \
      -s 0,hostbridge \
      -s 4,ahci-cd,$CD \
      -s 3,ahci-hd,$HD,sectorsize=512 \
      -s 5,fbuf,tcp=0.0.0.0:5900,$DPY \
      -s 6,xhci,tablet \
      -s 2,passthru,0/2/0 \
      -s 11,passthru,0/20/0 \
      -s 10,virtio-net,$IF \
      -s 20,hda,play=/dev/dsp,rec=/dev/dsp \
      -s 31,lpc \
      -l bootrom,$UEFI,fwcfg=qemu  \
      -m $MEM -H -w \
      $VM

    RES=$?
      bhyvectl --destroy --vm=$VM
    if [ $RES -eq 1 ]
    then

detach
        break
    fi
    echo sleeping for 5 sec...
    sleep 5
done
