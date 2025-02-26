#!/bin/sh

 file="/boot/defaults/loader.conf"

if [ -f "$file" ] ; then
    
fi

#                    echo  'nvidia_load="YES" '            >>                   /boot/defaults/loader.conf
                     echo  'vboxdrv_load="YES"'            >>                   /boot/defaults/loader.conf
                     echo  'coretemp_load="YES" '          >>                   /boot/defaults/loader.conf
                     echo  'cpufreq_load="yes"'            >>                   /boot/defaults/loader.conf
                     echo  'vfs.zfs.prefetch_disable="0"'  >>                   /boot/defaults/loader.conf
                     echo  'machdep.disable_mtrrs=1'       >>                   /boot/defaults/loader.conf
                     echo  'kern.vty=vt'                   >>                   /boot/defaults/loader.conf
                     echo  'hw.nvidiadrm.modeset=1'        >>                   /boot/defaults/loader.conf
                     echo  'if_urtwn_load="YES"'           >>                   /boot/defaults/loader.conf
                     echo  'legal.realtek.license_ack=1'   >>                   /boot/defaults/loader.conf
#                    echo  'nvidia-modeset_load="YES"'     >>                   /boot/defaults/loader.conf
                     echo  'fusefs_load="YES"'             >>                   /boot/defaults/loader.conf
#                    echo  'vmm_load="YES"'                >>                   /boot/defaults/loader.conf
                     echo  'hw.usb.no_boot_wait=1'         >>                   /boot/defaults/loader.conf
