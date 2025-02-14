#!/bin/sh
CURRENTDIRECTORY=$(pwd)
login=$(cat  ../accounts/user | awk '{print $1}' |  head -n1)

create_dir () {

dir="
/home/$login/.config/
/home/$login/.config/fbpanel
/home/$login/.config/openbox
/home/$login/.local/share
/home/$login/.config/icons
/home/$login/.config/tint2
/home/$login/.mozilla
/home/$login/.themes
/home/$login/.icons
"
              for i in ${dir};do  
                    mkdir -p   ${dir}
                    chown -R   $login:wheel  ${dir}
              done 
}

unpack () {

#create user space
                     cp -rf /tmp/userfolder/.[a-zA-Z0-9]*   /home/$login  
                     cp -rf /tmp/userfolder/[a-zA-Z0-9]*    /home/$login   
                     chown  -R  $login:wheel /home/$login
}

 create_dir
                   
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
sh  $CURRENTDIRECTORY/gtkrc-2.0.sh
cd -
cd   /home/$login/.config/fbpanel
sh  $CURRENTDIRECTORY/fbpanel.sh
cd -
cd   /home/$login/.config/openbox
sh  $CURRENTDIRECTORY/rc.xml.sh
sh  $CURRENTDIRECTORY/openbox.autostart.sh
sh  $CURRENTDIRECTORY/openbox.menu.xml.sh
cd -

#create downloads folder
                       ln -s          /ntfs-2TB/downloads                 /home/$login/downloads
                       chown  -R      $login:wheel                        /home/$login/downloads

#create .icons and themes .folder

                       cp    ../etc/icons/docker.png                      /home/$login/.config/icons
                       cp    ../etc/icons/shutdown.png                    /home/$login/.config/icons
                       cp    ../etc/icons/ubuntu.png                      /home/$login/.config/icons
 

#create share folder for virtualbox
#                       mkdir  /home/$login/share
#                       chown  -R      $login:wheel                      /home/$login/share
                   
#scripts folder                  
cp  -R  /tmp/userfolder/.scripts                  /home/$login/
cp  -R  /tmp/userfolder/scripts                   /home/$login/

#update-desktop-database
cp    -R  /tmp/userfolder/.local/share/applications    /home/$login/.local/share/
/usr/local/bin/update-desktop-database                 /home/$login/.local/share/applications

chown  -R      $login:wheel   /mnt

cp       /tmp/userfolder/scripts/reloadlist    /usr/local/bin
cp       /tmp/userfolder/scripts/echoplaylist  /usr/local/bin
cp       /tmp/userfolder/scripts/youtube.sh    /usr/local/bin/youtube
cp       /tmp/userfolder/scripts/kodidlp       /usr/local/bin
cp       /tmp/userfolder/scripts/socat-dsd.sh  /usr/local/bin 


zpool import -f zada2
zpool import -f ntfs-2TB
zpool import -f bhyve
zpool import -f media2
 

rm -R /usr/obj
ln -s /ntfs-2TB/obj /usr/obj
rm -R /var/cache/pkg
ln -s /ntfs-2TB/var/cache/pkg   /var/cache/pkg
zfs destroy zroot/usr/ports
rm -r /usr/ports
ln -s /ntfs-2TB/ports /usr/ports
zfs destroy zroot/usr/src
rm -R /usr/src
ln -s /ntfs-2TB/src /usr/src

# copy  system-file-manager-root.svg to  /usr/local/share/pixmaps
cp  ../etc/icons/system-file-manager-root.svg    /usr/local/share/pixmaps
cp  ../etc/rootpcmanfm.desktop                   /usr/local/share/applications

#fix pacmanfm icon 
cp ../etc/icons/system-file-manager.svg /usr/local/share/icons/hicolor/scalable/apps

ln -s /ntfs-2TB/i386-wine-pkg  /home/$login/.i386-wine-pkg
 
cp -R "/ntfs-2TB/freebsd config/firefox"          /home/$login/.mozilla
cp -R "/ntfs-2TB/freebsd config/TelegramDesktop"  /home/$login/.local/share
cp -R "/ntfs-2TB/freebsd config/google-chrome"    /home/$login/.config

chown -R $login:wheel /ntfs-2TB/mate
#fix run "explorer ie" from  xfce-wintc
echo 'setenv WEBKIT_DISABLE_DMABUF_RENDERER 1' >> /home/$login/.cshrc
chown  -R $login:wheel /home/$login
rm -r /tmp/userfolder