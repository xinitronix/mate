#!/bin/sh

dir=$(dirname "$(realpath $0)")

if [ $(id -u) -ne 0 ]
  then echo Please run this script as root or using sudo!
  exit
fi

for i in $(cat $dir/dump); do

 rm -R   $i 

done
