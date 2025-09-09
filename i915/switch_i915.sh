#!/bin/sh

if test "$(id -u)" -ne 0; then
	printf "%s must be run as root\n" "${0##*/}"
	exit 1
fi

set_i915kms () {
               gsed -i  '\|^kld_list|d'  /etc/rc.conf
               echo 'kld_list="linux64 nullfs cuse i915kms"' >> /etc/rc.conf
               rm /etc/X11/xorg.conf
               cp  /usr/local/etc/20-intel.conf  /usr/local/etc/X11/xorg.conf.d/
}

set_nvidia () {
               gsed -i  '\|^kld_list|d'  /etc/rc.conf
               echo 'kld_list="linux64 nullfs cuse nvidia-drm"' >> /etc/rc.conf
               rm   /usr/local/etc/X11/xorg.conf.d/20-intel.conf
               cp   /usr/local/etc/xorg.conf   /etc/X11	
}

line=$(cat /etc/rc.conf | grep i915kms)

if [ -z "$line" ]
then
     echo "\$var Пустая set mode i915"
     set_i915kms
else
     echo "\$var не пустая set mode nvidia"
     set_nvidia 
fi