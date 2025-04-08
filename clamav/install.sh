#!/bin/sh

if [  -f "/usr/local/etc/mate.pid/clamav_install.pid" ]; then
    echo "Файл   clamav_install.pid существует"
    echo "Пропускаем установку clamav"
    exit 
fi

install_first_user () {

login=$(cat  $dir/../accounts/user | awk '{print $1}' |  head -n1)
CURRENTDIRECTORY=$(pwd)
install_clamav

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
    install_clamav
fi
  done
}

install_clamav () {
dir=$(dirname "$(realpath $0)")
cp  $dir/freshclam.conf  /usr/local/etc
cp -R $dir/clamav-gui    /home/$login/.config
}

install_all_user

mkdir -p /usr/local/etc/mate.pid
touch /usr/local/etc/mate.pid/clamav_install.pid