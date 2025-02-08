#!/bin/sh

cat  ../accounts/user  | while read line

   do
      login=$(echo $line | awk '{print $1}' )
      echo -e "permit nopass keepenv $login\n"            >>    /usr/local/etc/doas.conf
   done

 /usr/local/bin/gsed   -i '/^[[:space:]]*$/d' /usr/local/etc/doas.conf
 /usr/local/bin/gsed   -i '$d'                /usr/local/etc/doas.conf