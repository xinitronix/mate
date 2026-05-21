#!/bin/sh

if [  -f "/usr/local/etc/mate.pid/rdp_install.pid" ]; then
    echo "Файл   rdp_install.pid существует"
    echo "Пропускаем установку rdp"
    exit 
fi

dir=$(dirname "$(realpath $0)")

install_first_user () {
login=$(cat  $dir/../accounts/user | awk '{print $1}' |  head -n1)
install_rdp

}

install_all_user () {

cat  $dir/../accounts/user  | while read line

   do

if [ -z "$line" ]
then
     
else
     login=$(echo $line | awk '{print $1}' )
     echo $login
     install_rdp
     
      fi
       done
}

install_rdp() {

cp $dir/remote-desktop-48.png   /usr/local/share/pixmaps
cp $dir/opensuse.png   /usr/local/share/pixmaps
cp $dir/win10-rdp /usr/local/bin
cp $dir/win7-rdp  /usr/local/bin
cp $dir/vista-rdp  /usr/local/bin
cp $dir/opensuse15-kde3-rdp  /usr/local/bin
cp $dir/opensuse15-kde3-rdp.desktop  /usr/local/share/applications
cp $dir/win10-rdp.desktop  /usr/local/share/applications
cp $dir/win7-rdp.desktop   /usr/local/share/applications
cp $dir/vista-rdp.desktop   /usr/local/share/applications
}

install_first_user

mkdir -p /usr/local/etc/mate.pid
touch /usr/local/etc/mate.pid/rdp_install.pid


