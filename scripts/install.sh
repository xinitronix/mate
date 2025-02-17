#!/bin/sh

dir=$(dirname "$(realpath $0)")

if [  -f "/usr/local/etc/mate.pid/pkg_install.pid" ]; then
    echo "Файл  pkg_install.pid   существует"
    exit 
fi

  for i in $(cat $dir/pkg_leaves); do

pkg install  -r myrepo  -y  $i 
#pkg install  -r FreeBSD  -y $i 

   done

mkdir -p /usr/local/etc/mate.pid
touch /usr/local/etc/mate.pid/pkg_install.pid