#!/bin/sh

if [  -f "/usr/local/etc/mate.pid/power_install.pid" ]; then
    echo "Файл  power_install.pid   существует"
    echo "Пропускаем установку power"
    exit 
fi

dir=$(dirname "$(realpath $0)")

cp -R $dir/power_py /usr/local/lib/python3.11/site-packages
ln -s /usr/local/lib/python3.11/site-packages/power_py/power.py /usr/local/bin/powerpy

mkdir -p /usr/local/etc/mate.pid
touch /usr/local/etc/mate.pid/power_install.pid