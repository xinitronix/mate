#!/bin/sh
add () {
      login=$(echo $line | awk '{print $1}' )
      echo -e "permit nopass keepenv $login\n"            >>    /usr/local/etc/doas.conf
}


cat  ../accounts/user  | while read line

   do
     if [ -z "$line" ]
then
     echo "\$var Пустая"
else
     echo "\$var не пустая"
 
     add
     

fi
   done

 /usr/local/bin/gsed   -i '/^[[:space:]]*$/d' /usr/local/etc/doas.conf
# /usr/local/bin/gsed   -i '$d'                /usr/local/etc/doas.conf