#!/bin/sh

if [  -f "/usr/local/etc/mate.pid/clamav_install.pid" ]; then
    echo "Файл   clamav_install.pid существует"
    echo "Пропускаем установку clamav"
    exit 
fi

dir=$(dirname "$(realpath $0)")
cp  $dir/freshclam.conf  /usr/local/etc

mkdir -p /usr/local/etc/mate.pid
touch /usr/local/etc/mate.pid/clamav_install.pid