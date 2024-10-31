#!/bin/sh
cp rc.d/dockerbox  /etc/rc.d
cp sbin/dockerbox  /usr/local/sbin
cp dockerbox.py    /usr.local/bin
mkdir -p           /usr/local/etc/dockerbox
cp etc/dockerbox.conf /usr/local/etc/dockerbox