#!/bin/sh

if [ $(id -u) -ne 0 ]
  then echo Please run this script as root or using sudo!
  exit
fi


cat  ../accounts/user  | while read line
   do
      
login=$(echo $line | awk '{print $1}' )

   pw userdel -r -n  $login


   done


rm -r /home/*
