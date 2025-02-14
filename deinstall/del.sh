#!/bin/sh

dir=$(dirname "$(realpath $0)")

ls /home  | while read line
   do
      
login=$(echo $line | awk '{print $1}' )
if [ $(id -u) -ne 0 ]
  then echo Please run this script as root or using sudo!
  exit
fi

grep -vf $dir/rc.conf.d /etc/rc.conf > rc.conf
grep -vf $dir/loader.conf.d  /boot/loader.conf >  loader.conf 
grep -vf $dir/defaults/loader.conf.d  /boot/defaults/loader.conf > defaults/loader.conf
rm   /boot/defaults/loader.conf
rm   /boot/loader.conf
rm   /etc/rc.conf
rm   /etc/fstab
rm   -r  /var/run/xdg/$login
rm   -r  /tmp/S-$login
rm   -r  /tmp/screens/S-$login
cp   $dir/rc.conf /etc/rc.conf
cp   $dir/loader.conf /boot/loader.conf 
cp   $dir/defaults/loader.conf   /boot/defaults/loader.conf

done