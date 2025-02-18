#!/bin/sh

dir=$(dirname "$(realpath $0)")

install_first_user () {
login=$(cat  $dir/../accounts/user | awk '{print $1}' |  head -n1)
install_idesk

}

install_all_user () {

cat  $dir/../accounts/user  | while read line

   do

if [ -z "$line" ]
then
     
else
     login=$(echo $line | awk '{print $1}' )
     echo $login
     install_idesk
     
      fi
       done
}

install_idesk() {
cp -R idesktop    /home/$login/.idesktop
chown  -R      $login:wheel                /home/$login/.idesktop
cp ideskrc  /home/$login/.ideskrc
chown -R $login:wheel   /home/$login/.ideskrc

}

install_first_user
