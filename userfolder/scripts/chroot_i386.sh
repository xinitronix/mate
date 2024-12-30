#!/bin/sh

mkdir  /ntfs-2TB/FreeBSD_14_i386

fetch https://download.freebsd.org/releases/i386/14.2-RELEASE/base.txz

doas tar --unlink -Jxpf base.txz -C  /ntfs-2TB/FreeBSD_14_i386

doas mkdir -p  /ntfs-2TB/FreeBSD_14_i386/ports

doas mount -t devfs devfs  /ntfs-2TB/FreeBSD_14_i386/dev

doas mount -t nullfs  /usr/ports  /ntfs-2TB/FreeBSD_14_i386/ports

doas cp /etc/resolv.conf  /ntfs-2TB/FreeBSD_14_i386/etc/