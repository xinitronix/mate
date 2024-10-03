#!/bin/sh

# Execution of virtual machines requires root previleges
if test "$(id -u)" -ne 0; then
	printf "%s must be run as root\n" "${0##*/}"
	exit 1
fi



rm /tmp/pkg_upgrade.txt
rm pkg_upgrade

echo N |  pkg upgrade -r FreeBSD | grep - | sed -r 's/([^ ]*).*/\1/' | tr -d ":" >> /tmp/pkg_upgrade.txt

 for i in `cat /tmp/pkg_upgrade.txt` ; do 
    
  rm /ntfs-2TB/All/$i-*
  

done