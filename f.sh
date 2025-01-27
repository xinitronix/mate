#!/bin/sh
login=$(cat  accounts/user | awk '{print $1}' |  head -n1)

if [ -z "$login" ]
then
    echo "введите логин" 
    exit
else
     echo "\$var не пустая"
fi


rm -R /home/$login/.mozilla/firefox
#sshpass -p  639639 scp -r  pi@192.168.8.45:/home/pi/tinder/3/firefox ~/.mozilla
#sshpass -p  639639 scp -r  pi@192.168.8.45:/home/pi/TelegramDesktop ~/.local/share
#fetch https://addons.mozilla.org/firefox/downloads/file/3816867/ublock_origin-1.37.2-an+fx.xpi
#firefox ublock_origin-1.37.2-an+fx.xpi
doas zpool import zada2
doas zpool import media1
doas zpool import media2
#doas zpool import -f  ntfs-2TB

#doas rm -R /usr/obj
#doas ln -s /home/definitly/2TB/obj /usr/obj
#doas rm -R /var/cache/pkg
#doas ln -s /ntfs-2TB/var/cache/pkg   /var/cache/pkg
#doas rm  -R /var/db/portsnap/
#doas zfs destroy zroot/usr/ports
#doas ln -s /home/definitly/2TB/var/db/portsnap  /var/db/portsnap
#doas ln -s /home/definitly/2TB/ports /usr/ports

ln -s /ntfs-2TB/i386-wine-pkg  /home/$login/.i386-wine-pkg

doas cp "/ntfs-2TB/freebsd config/dwm/ssh/id_ed25519" /home/$login/.ssh
doas cp "/ntfs-2TB/freebsd config/dwm/ssh/id_ed25519.pub" /home/$login/.ssh
doas cp "/ntfs-2TB/freebsd config/dwm/ssh/known_hosts" /home/$login/.ssh
doas cp "/ntfs-2TB/freebsd config/dwm/ssh/id_rsa" /home/$login/.ssh
doas cp "/ntfs-2TB/freebsd config/dwm/ssh/config" /home/$login/.ssh
doas chown -R $login:wheel /home/$login/.ssh

doas cp -R "/ntfs-2TB/freebsd config/firefox" /home/$login/.mozilla
doas chown -R $login:wheel /home/$login/.mozilla
doas cp -R "/ntfs-2TB/freebsd config/TelegramDesktop" /home/$login/.local/share
doas chown -R $login:wheel /home/$login/.local/share/TelegramDesktop
doas cp -R "/ntfs-2TB/freebsd config/google-chrome" /home/$login/.config
doas chown -R $login:wheel  /home/$login/.config/google-chrome
doas chown -R $login:wheel /ntfs-2TB/mate
