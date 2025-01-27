#!/bin/sh
CURRENTDIRECTORY=$(pwd)
login=$(cat  accounts/user | awk '{print $1}' |  head -n1)
login2=rtorrent


                    
 #/ntfs-2TB  
 
if [ ! -d "/ntfs-2TB" ]; then
    echo "Папка $FILE  не существует"
 
                    mkdir /ntfs-2TB
                    chown  -R     $login:wheel        /ntfs-2TB
                    chmod 0777  /ntfs-2TB



fi
                    ln -s  /ntfs-2TB                  /home/$login/2TB
                    chown  -R     $login:wheel        /home/$login/2TB
                    chmod 0777     /home/$login/2TB

  



#create user space
                     cp -rf $CURRENTDIRECTORY/userfolder/.[a-zA-Z0-9]*   /home/$login  
                     cp -rf $CURRENTDIRECTORY/userfolder/[a-zA-Z0-9]*    /home/$login   
                     chown  -R  $login:wheel /home/$login
#create downloads folder
                       ln -s          /ntfs-2TB/downloads                 /home/$login/downloads
                       chown  -R      $login:wheel                        /home/$login/downloads
#create VirtualBox VMs folder

#                       mkdir  /home/$login/VirtualBox\ VMs 
#                       chown  -R      $login:wheel                         /home/$login/VirtualBox\ VMs 

#create .icons and themes .folder
                       mkdir  /home/$login/.icons
                       chown  -R      $login:wheel                        /home/$login/.icons
#                      mkdir  /home/$login/.themes
#                      chown  -R      $login:wheel                       /home/$login/.themes    


#create pic folder      
#                       mkdir  /home/$login/pic
#                       chown  -R      $login:wheel                      /home/$login/pic

#create share folder for virtualbox
#                       mkdir  /home/$login/share
#                       chown  -R      $login:wheel                      /home/$login/share
                   
#/home/$login/.login  
                  
#                     echo './f.sh'                                                  >>            /home/$login/.login 


#update-desktop-database

update-desktop-database /home/$login/.local/share/applications

chown  -R      $login:wheel   /mnt

cp       $CURRENTDIRECTORY/userfolder/scripts/reloadlist    /usr/local/bin
cp       $CURRENTDIRECTORY/userfolder/scripts/echoplaylist  /usr/local/bin
cp       $CURRENTDIRECTORY/userfolder/scripts/youtube.sh    /usr/local/bin/youtube
cp       $CURRENTDIRECTORY/userfolder/scripts/kodidlp       /usr/local/bin

 zpool import zada2
 zpool import media1
 zpool import media2
 zpool import -f  ntfs-2TB
 zpool import -f  bhyve
 rm -R /usr/obj
 ln -s /ntfs-2TB/obj /usr/obj
 rm -R /var/cache/pkg
 ln -s /ntfs-2TB/var/cache/pkg   /var/cache/pkg
 rm  -R /var/db/portsnap/
 zfs destroy zroot/usr/ports
 rm -r /usr/ports
 ln -s /ntfs-2TB/var/db/portsnap  /var/db/portsnap
 ln -s /ntfs-2TB/ports /usr/ports
 zfs destroy zroot/usr/src
 rm -R /usr/src
 ln -s /ntfs-2TB/src /usr/src

#firefox emoji 
mkdir -p /home/$login/.fonts/mozilla/
cp /usr/local/lib/firefox/fonts/TwemojiMozilla.ttf /home/$login/.fonts/mozilla/
#cd /home/$login/.fonts/mozilla/
#mkfontdir mozilla/
#mkfontscale mozilla/

#dsd p25 

cp  $CURRENTDIRECTORY/userfolder/scripts/socat-dsd.sh /usr/local/bin 

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


 ln -s /ntfs-2TB/i386-wine-pkg  /home/$login/.i386-wine-pkg
 mkdir -p  /home/$login/.ssh
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
