#!/bin/sh
CURRENTDIRECTORY=$(pwd)
login=$(cat  ../accounts/user | awk '{print $1}' |  head -n1)



unpack () {

#create user space
                     cp -rf /tmp/userfolder/.[a-zA-Z0-9]*   /home/$login  
                     cp -rf /tmp/userfolder/[a-zA-Z0-9]*    /home/$login   
                     chown  -R  $login:wheel /home/$login
}

                    
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

 
cd  /home/$login/
sh  $CURRENTDIRECTORY/cshrc.sh
sh  $CURRENTDIRECTORY/Xdefaults.sh
sh  $CURRENTDIRECTORY/xinitrc.sh
sh  $CURRENTDIRECTORY/xxkbrc.sh
cd -
mkdir -p /home/$login/.config/fbpanel
cd   /home/$login/.config/fbpanel
sh  $CURRENTDIRECTORY/fbpanel.sh
cd -
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

/usr/local/bin/update-desktop-database /home/$login/.local/share/applications

chown  -R      $login:wheel   /mnt

cp       /tmp/userfolder/scripts/reloadlist    /usr/local/bin
cp       /tmp/userfolder/scripts/echoplaylist  /usr/local/bin
cp       /tmp/userfolder/scripts/youtube.sh    /usr/local/bin/youtube
cp       /tmp/userfolder/scripts/kodidlp       /usr/local/bin

 zpool import -f zada2
 zpool import -f ntfs-2TB
 zpool import -f bhyve
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

# copy  system-file-manager-root.svg to /usr/local/share/pixmaps

cp /home/$login/.config/icons/system-file-manager-root.svg  /usr/local/share/pixmaps
cp  ../etc/rootpcmanfm.desktop               /usr/local/share/applications

#fix pacmanfm icon 

cp ../etc/system-file-manager.svg /usr/local/share/icons/hicolor/scalable/apps


#dsd p25 

cp  /tmp/userfolder/scripts/socat-dsd.sh /usr/local/bin 

if [ -z "$login" ]
then
    echo "введите логин" 
    exit
else
     echo "\$var не пустая"
fi


rm -R /home/$login/.mozilla/


ln -s /ntfs-2TB/i386-wine-pkg  /home/$login/.i386-wine-pkg
 

 mkdir -p /home/$login/.mozilla
 cp -R "/ntfs-2TB/freebsd config/firefox" /home/$login/.mozilla
 chown -R $login:wheel /home/$login/.mozilla
 cp -R "/ntfs-2TB/freebsd config/TelegramDesktop" /home/$login/.local/share
 chown -R $login:wheel /home/$login/.local/share/TelegramDesktop
 cp -R "/ntfs-2TB/freebsd config/google-chrome" /home/$login/.config
 chown -R $login:wheel  /home/$login/.config/google-chrome
 chown -R $login:wheel /ntfs-2TB/mate
#fix run "explorer ie" from  xfce-wintc
echo 'setenv WEBKIT_DISABLE_DMABUF_RENDERER 1' >> /home/$login/.cshrc
rm -r /tmp/userfolder