#!/bin/sh

dir=$(dirname "$(realpath $0)")

login=$(cat  $dir/../accounts/user | awk '{print $1}' |  head -n1)

mkdir -p  /home/$login/.config/gh
chown -R $login:wheel /home/$login/.config/gh

openssl enc -base64 -d -aes-256-cbc -iter 1000000 -pass pass:$ssh_passwd  -in hosts.yml.enc -out /tmp/hosts.yml

cp  /tmp/hosts.yml   /home/$login/.config/gh

chown -R $login:wheel /home/$login/.config/gh

rm /tmp/hosts.yml