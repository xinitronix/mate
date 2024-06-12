#!/bin/sh
CD=/home/dwm/virtio-win-0.1.118.iso
HD=/ntfs-2TB/vm/win10/disk0.img
USB="5/0/0"
UEFI=/usr/local/share/uefi-firmware/BHYVE_UEFI.fd
MEM=4G
VM="win10"
IF="tap0"
MAC="mac=00:A0:98:78:32:10"
DPY="w=1918,h=1058"

doas  ifconfig $IF up
while true
do
    doas  bhyve \
      -c 4,sockets=2,cores=2 -S \
      -s 0,hostbridge \
      -s 3,ahci-hd,$HD,sectorsize=512 \
      -s 5,fbuf,tcp=0.0.0.0:5900,$DPY \
      -s 6,xhci,tablet \
      -s 10,virtio-net,$IF \
      -s 20,hda,play=/dev/dsp,rec=/dev/dsp \
      -s 31,lpc \
      -l bootrom,$UEFI \
      -m $MEM -H -w \
      $VM

    RES=$?
    doas  bhyvectl --destroy --vm=$VM
    if [ $RES -eq 1 ]
    then
        exit 1
    fi
    echo sleeping for 5 sec...
    sleep 5
done