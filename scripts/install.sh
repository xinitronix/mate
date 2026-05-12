#!/bin/sh
kldload linux64
dir=$(dirname "$(realpath $0)")

if [  -f "/usr/local/etc/mate.pid/pkg_install.pid" ]; then
    echo "Файл  pkg_install.pid   существует"
    echo "Пропускаем установку пакетов"
    exit 
fi

install_16 () {

for i in $(cat $dir/pkg_leaves); do

pkg install  -r myrepo16 -y  $i 

done
}

install_15 () {

for i in $(cat $dir/pkg_leaves); do

pkg install  -r myrepo15  -y  $i 

done
}

if [ "15.1-STABLE" = "$(uname -r)"  ] || [ "15.1-BETA2" = "$(uname -r)"  ] ; then
    install_15
    echo "install packages freebsd 15"
else
    install_16
    echo "install packages freebsd 16"
fi

mkdir -p /usr/local/etc/mate.pid
touch /usr/local/etc/mate.pid/pkg_install.pid
