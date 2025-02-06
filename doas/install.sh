#!/bin/sh

cat  ../accounts/user  | while read line

   do
      login=$(echo $line | awk '{print $1}' )
      echo -e "permit nopass keepenv $login\n"            >>    /usr/local/etc/doas.conf
   done


 sed  '$d'  -i  /usr/local/etc/doas.conf