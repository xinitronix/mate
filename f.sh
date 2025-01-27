#!/bin/sh
login=$(cat  accounts/user | awk '{print $1}' |  head -n1)

if [ -z "$login" ]
then
    echo "введите логин" 
    exit
else
     echo "\$var не пустая"
fi


rm -R /home/$login/.mozilla/
#sshpass -p  639639 scp -r  pi@192.168.8.45:/home/pi/tinder/3/firefox ~/.mozilla
#sshpass -p  639639 scp -r  pi@192.168.8.45:/home/pi/TelegramDesktop ~/.local/share
#fetch https://addons.mozilla.org/firefox/downloads/file/3816867/ublock_origin-1.37.2-an+fx.xpi
#firefox ublock_origin-1.37.2-an+fx.xpi
 zpool import zada2
 zpool import media1
 zpool import media2
# zpool import -f  ntfs-2TB

# rm -R /usr/obj
# ln -s /home/definitly/2TB/obj /usr/obj
# rm -R /var/cache/pkg
# ln -s /ntfs-2TB/var/cache/pkg   /var/cache/pkg
# rm  -R /var/db/portsnap/
# zfs destroy zroot/usr/ports
# ln -s /home/definitly/2TB/var/db/portsnap  /var/db/portsnap
# ln -s /home/definitly/2TB/ports /usr/ports

ln -s /ntfs-2TB/i386-wine-pkg  /home/$login/.i386-wine-pkg

 cp "/ntfs-2TB/freebsd config/dwm/ssh/id_ed25519" /home/$login/.ssh
 cp "/ntfs-2TB/freebsd config/dwm/ssh/id_ed25519.pub" /home/$login/.ssh
 cp "/ntfs-2TB/freebsd config/dwm/ssh/known_hosts" /home/$login/.ssh
 cp "/ntfs-2TB/freebsd config/dwm/ssh/id_rsa" /home/$login/.ssh
 cp "/ntfs-2TB/freebsd config/dwm/ssh/config" /home/$login/.ssh
 chown -R $login:wheel /home/$login/.ssh
 mkdir -p /home/$login/.mozilla
 cp -R "/ntfs-2TB/freebsd config/firefox" /home/$login/.mozilla
 chown -R $login:wheel /home/$login/.mozilla
 cp -R "/ntfs-2TB/freebsd config/TelegramDesktop" /home/$login/.local/share
 chown -R $login:wheel /home/$login/.local/share/TelegramDesktop
 cp -R "/ntfs-2TB/freebsd config/google-chrome" /home/$login/.config
 chown -R $login:wheel  /home/$login/.config/google-chrome
 chown -R $login:wheel /ntfs-2TB/mate
