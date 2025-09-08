#!/bin/sh
img=$(uname -s)-$(uname -r)-$(uname -m)-$(date '+%Y%m%d')-$(cd /usr/src && git rev-parse HEAD | cut -c1-12)-memstick.img
cp /usr/obj/ntfs-2TB/freebsd-src/amd64.amd64/release/memstick.img   $HOME/$img