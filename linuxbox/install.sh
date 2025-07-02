#!/bin/sh
cp rc.d/linuxbox      /etc/rc.d
cp sbin/linuxbox      /usr/local/sbin
mkdir -p               /usr/local/etc/linuxbox
cp etc/linuxbox.conf  /usr/local/etc/linuxbox
cp  switch_vm/switch_vm_off  /usr/local/bin
cp  switch_vm/switch_vm_on   /usr/local/bin