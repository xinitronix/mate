#!/bin/sh

if [ $(id -u) -ne 0 ]
  then echo Please run this script as root or using sudo!
  exit
fi


  for i in $(cat user); do

   pw userdel -r -n  $i 


   done


