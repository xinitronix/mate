#!/bin/sh
CURRENTDIRECTORY=$(pwd)

install_first_user () {
login=$(cat  ../accounts/user | awk '{print $1}' |  head -n1)
install_idesk

}


install_all_user () {

cat  ../accounts/user  | while read line

   do


if [ -z "$line" ]
then
     echo "\$var Пустая"
else
     echo "\$var не пустая"
 
     login=$(echo $line | awk '{print $1}' )
     echo $login
     install_idesk
     

      fi
       done

}


install_idesk() {
cp -R idesk   /home/$login/.idesk
chown  -R      $login:wheel                /home/$login/.idesk

}



install_first_user