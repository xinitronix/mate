#!/bin/sh
rm -R ~/.mozilla/firefox
sshpass -p  639639 scp -r  pi@192.168.8.45:/home/pi/tinder/3/firefox ~/.mozilla
sshpass -p  639639 scp -r  pi@192.168.8.45:/home/pi/TelegramDesktop ~/.local/share
#fetch https://addons.mozilla.org/firefox/downloads/file/3816867/ublock_origin-1.37.2-an+fx.xpi
#firefox ublock_origin-1.37.2-an+fx.xpi
doas zpool import zada2
doas zpool import media1
doas zpool import media2
doas zpool import ntfs-2TB

doas rm -R /var/cache/pkg
doas ln -s /ntfs-2TB/var/cache/pkg   /var/cache/pkg
doas rm  -R /var/db/portsnap/
doas zfs destroy zroot/usr/ports
doas ln -s /home/definitly/2TB/var/db/portsnap  /var/db/portsnap
doas ln -s /home/definitly/2TB/ports /usr/ports

cp "/ntfs-2TB/freebsd config/ssh/id_rsa" ~/.ssh
cp "/ntfs-2TB/freebsd config/ssh/id_rsa.pub" ~/.ssh
cp "/ntfs-2TB/freebsd config/ssh/known_hosts" ~/.ssh 

cp -R "/home/definitly/2TB/freebsd config/firefox" ~/.mozilla


doas cp "/ntfs-2TB/freebsd config/proton/pass.txt"  /usr/local/etc/proton
doas cp "/ntfs-2TB/freebsd config/proton/us-free-08.protonvpn.com.tcp.ovpn"  /usr/local/etc/proton
