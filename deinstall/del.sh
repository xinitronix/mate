#!/bin/sh
login=$(cat  ../accounts/user | awk '{print $1}' |  head -n1)
if [ $(id -u) -ne 0 ]
  then echo Please run this script as root or using sudo!
  exit
fi

grep -vf rc.conf.d /etc/rc.conf > rc.conf
grep -vf loader.conf.d  /boot/loader.conf >  loader.conf 
grep -vf defaults/loader.conf.d  /boot/defaults/loader.conf > defaults/loader.conf
rm   /boot/defaults/loader.conf
rm   /boot/loader.conf
rm   /etc/rc.conf
rm   /etc/fstab
rm   -r  /var/run/xdg/$login
rm   -r  /tmp/S-$login
cp   rc.conf /etc/rc.conf
cp   loader.conf /boot/loader.conf 
cp   defaults/loader.conf   /boot/defaults/loader.conf