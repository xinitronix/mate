#!/bin/sh

if [ $(id -u) -ne 0 ]
  then echo Please run this script as root or using sudo!
  exit
fi



  for i in $(cat dump); do

 rm -R   $i 


   done
