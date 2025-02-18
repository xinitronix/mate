#!/bin/sh
kldload linux64
dir=$(dirname "$(realpath $0)")

if [  -f "/usr/local/etc/mate.pid/pkg_install.pid" ]; then
    echo "Файл  pkg_install.pid   существует"
    echo "Пропускаем установку пакетов"
    exit 
fi

install_15 () {

for i in $(cat $dir/pkg_leaves); do

pkg install  -r myrepo15  -y  $i 

done
}

install_14 () {

for i in $(cat $dir/pkg_leaves); do

pkg install  -r myrepo  -y  $i 

done
}

if [ "14.2-STABLE" = "$(uname -r)"  ]; then
    install_14
    echo "install packages freebsd 14"
else
    install_15
    echo "install packages freebsd 15"
fi

mkdir -p /usr/local/etc/mate.pid
touch /usr/local/etc/mate.pid/pkg_install.pid