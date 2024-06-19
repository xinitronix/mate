#!/bin/sh

var=$(cat /usr/local/etc/X11/xorg.conf.d/20-radeon.conf | grep nvidia)


if [ -z "$var" ]
then
     doas  gsed -i 's/intel/nvidia/' /usr/local/etc/X11/xorg.conf.d/20-radeon.conf
       doas gsed -i 's/1\/0\/0/0\/2\/0/'  /boot/loader.conf
  echo  "passthru intel"

else
       doas  gsed -i 's/nvidia/intel/' /usr/local/etc/X11/xorg.conf.d/20-radeon.conf
     doas gsed -i 's/0\/2\/0/1\/0\/0/'  /boot/loader.conf
  echo "passthru nvidia"
fi