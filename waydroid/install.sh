#!/bin/sh

if [  -f "/usr/local/etc/mate.pid/waydroid_install.pid" ]; then
    echo "Файл   waydroid_install.pid существует"
    echo "Пропускаем установку waydroid"
    exit 
fi

dir=$(dirname "$(realpath $0)")

install_first_user () {
login=$(cat  $dir/../accounts/user | awk '{print $1}' |  head -n1)
install_waydroid

}

install_all_user () {

cat  $dir/../accounts/user  | while read line

   do

if [ -z "$line" ]
then
     
else
     login=$(echo $line | awk '{print $1}' )
     echo $login
     install_waydroid
     
      fi
       done
}

install_waydroid() {
cp waydroid.desktop      /usr/local/share/applications
cp waydroid.png          /usr/local/share/pixmaps/waydroid1.png
cp start-waydroid.sh     /usr/local/bin
cp weston.ini            /home/$login/.config
chown -R $login:wheel    /home/$login/.config
}

install_first_user

mkdir -p /usr/local/etc/mate.pid
touch /usr/local/etc/mate.pid/waydroid_install.pid