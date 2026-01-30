#!/bin/sh
cp rc.d/torbox      /etc/rc.d
cp sbin/torbox      /usr/local/sbin
cp torbox.py        /usr/local/bin
mkdir -p               /usr/local/etc/torbox
cp etc/torbox.conf  /usr/local/etc/torbox
cp torbox.desktop   /usr/local/share/applications
cp tor.png         /usr/local/share/pixmaps