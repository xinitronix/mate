#!/bin/sh

cp ubuntu  /etc/rc.d
ln -s                     /ntfs-2TB/compat/ubuntu /compat/ubuntu
cp ubuntu_chroot          /usr/local/bin
cp ubuntu_chroot_change         /usr/local/bin
cp ubuntu_chroot.desktop  /usr/local/share/applications
cp ubuntu_check_status    /usr/local/bin