#!/bin/sh
mkdir -p /usr/local/etc/amnezia/amneziawg

openssl enc -base64 -d -aes-256-cbc -iter 1000000 -pass pass:$ssh_passwd  -in wg.conf.enc -out /tmp/wg.conf

cp  /tmp/wg.conf   /usr/local/etc/amnezia/amneziawg

rm /tmp/wg.conf