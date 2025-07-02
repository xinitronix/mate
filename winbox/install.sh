#!/bin/sh
cp rc.d/winbox      /etc/rc.d
cp sbin/winbox      /usr/local/sbin
cp vnc       /usr/local/bin
mkdir -p               /usr/local/etc/winbox
cp etc/winbox.conf  /usr/local/etc/winbox
cp etc/loader.conf.winbox  /usr/local/etc/winbox
cp etc/loader.conf.linuxbox  /usr/local/etc/winbox
cp  switch_vm/switch_winvm_off  /usr/local/bin
cp  switch_vm/switch_winvm_on   /usr/local/bin