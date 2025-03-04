#!/bin/sh

dir=$(dirname "$(realpath $0)")

install_first_user () {

login=$(cat  $dir/../accounts/user | awk '{print $1}' |  head -n1)
CURRENTDIRECTORY=$(pwd)
install_openbox

}
 
install_all_user () {

cat  $dir/../accounts/user  | while read line

   do
   
     if [ -z "$line" ]
then
     echo "\$var Пустая"
else
     echo "\$var не пустая"
 
    login=$(echo $line | awk '{print $1}' )
    echo $login
    install_openbox

fi

  done

}

install_openbox () {

mkdir -p /home/$login/.config/openbox
cd  /home/$login/.config/openbox
sh  $dir/rc.xml.sh
sh  $dir/openbox.autostart.sh
sh  $dir/openbox.menu.xml.sh
chown  -R     $login:wheel  /home/$login/.config/
cd -

}

install_all_user 