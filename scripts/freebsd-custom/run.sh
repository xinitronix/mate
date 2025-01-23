#!/bin/sh
echo 'FreeBSD: { url: "http://pkg0.sjb.freebsd.org/${ABI}/latest", mirror_type: "NONE" }' \
        > /usr/local/etc/pkg/repos/FreeBSD.conf
pkg  update -y
export IGNORE_OSVERSION=yes
#pkg install -y git-lite
#git clone --depth=1  https://github.com/xinitronix/mate
fetch "https://github.com/xinitronix/mate/archive/refs/heads/master.zip"
tar zxf master.zip
cd mate-master
./install.sh 
