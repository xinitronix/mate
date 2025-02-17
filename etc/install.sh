#!/bin/sh
# sopcast xorg 

if [  -f "/usr/local/etc/mate.pid/etc_install.sh.pid" ]; then
    echo "Файл  etc_install.sh.pid   существует"
    exit 
fi

dir=$(dirname "$(realpath $0)")
login=$(cat  $dir/../accounts/user | awk '{print $1}' |  head -n1)

#copy   xorg.conf
# проверяем какая карта ati или nvidia  
#и копируем нужный xorg.conf

#tarxf             
               cp $dir/tarxf                           /usr/local/bin

#copy winetricks
#                    cp $CURRENTDIRECTORY/winetricks /usr/local/bin

#copy youtube 
#                     cp $CURRENTDIRECTORY/youtube                         /usr/local/bin
#copy cpic

                    cp $dir/cpic                             /usr/local/bin

#copy unrpm        

                    cp $dir/unrpm                            /usr/local/bin


#copy undeb       

                    cp $dir/undeb                            /usr/local/bin


#copy freebsd.conf
                    mkdir -p /usr/local/etc/pkg/repos
  #                  cp  $CURRENTDIRECTORY/freebsd.conf                      /usr/local/etc/pkg/repos
# copy free

                   cp  $CURRENTDIRECTORY/free  /usr/local/bin

#создание ссылки для mountiso.sh и umount.iso

ln -s   /home/$login/.scripts/mountiso.sh /usr/local/bin/mountiso
ln -s   /home/$login/.scripts/umountiso.sh  /usr/local/bin/umountiso

# copy screen_check.sh

cp   $dir/screen_check.sh   /usr/local/bin
                        
#set_wallpaper.sh

cp  $dir/set_wallpaper.sh  /usr/local/bin/

#feh_browser.sh

cp    $dir/feh_browser.sh  /usr/local/bin/
                      
#bsdconfig 
cp $dir/bsdconfig.desktop   /usr/local/share/applications

mkdir -p /usr/local/etc/mate.pid
touch /usr/local/etc/mate.pid/etc_install.sh.pid