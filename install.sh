#!/bin/sh


if [ -z "$1" ]
then
     echo "не введен пароль для ssh"
     exit
else
     export ssh_passwd=$1
fi



mkdir -p /usr/local/etc/pkg/repos
cp  etc/freebsd.conf  /usr/local/etc/pkg/repos

CURRENTDIRECTORY=$(pwd)

           tar -xf $CURRENTDIRECTORY/userfolder/userfolder.tar.xz -C  /tmp

           cd /tmp/userfolder/scripts/package
           ./install.sh
           cd $CURRENTDIRECTORY
           cd $CURRENTDIRECTORY/accounts
           ./create_user.sh
           cd .. 

          ./config.sh
          
          cd $CURRENTDIRECTORY/dzenconky
          ./install.sh
          cd ..
          cd $CURRENTDIRECTORY/etc
          ./install.sh
          cd .. 
          cd $CURRENTDIRECTORY/tint2
          ./install.sh
          cd ..
          cd $CURRENTDIRECTORY/switchscreen
          ./install.sh
          cd ..
 #         cd $CURRENTDIRECTORY/postinstall
 #         ./install.sh
 #        cd ..  
          cd $CURRENTDIRECTORY/noteconky
          ./install.sh
          cd .. 
          cd $CURRENTDIRECTORY/micro_httpd
          ./install.sh
          cd .. 
          cd $CURRENTDIRECTORY/weatherconky
          ./install.sh
          cd ..  
          cd $CURRENTDIRECTORY/monitoring
          ./install.sh
          cd ..
         
          cd $CURRENTDIRECTORY/worldtime
          ./install.sh 
          cd .. 
          
         
          cd $CURRENTDIRECTORY/ubuntu_chroot
          ./install.sh
          cd .. 

          cd $CURRENTDIRECTORY/webcamd
          ./install.sh 
          cd .. 
          cd $CURRENTDIRECTORY/binance
          ./install.sh 
          cd .. 

          cd $CURRENTDIRECTORY/wayland/dtaoconky
          ./install.sh 
          cd ..
 
          cd $CURRENTDIRECTORY/wayland/sfwbar
          ./install.sh 
          cd ..

          
  #        cd $CURRENTDIRECTORY/xboxdrv
  #        ./install.sh 
  #        cd .. 
         
  #        cd $CURRENTDIRECTORY/dwm
  #        ./install.sh 
  #        cd .. 
  
          cd $CURRENTDIRECTORY/power
          ./install.sh 
          cd .. 

          cd $CURRENTDIRECTORY/zapret
          ./install.sh 
          cd .. 

         cd $CURRENTDIRECTORY/dockerbox
          ./install.sh 
         cd ..
        
         
        cd $CURRENTDIRECTORY/userfolder
         ./userfolder.sh
        cd .. 

   cd $CURRENTDIRECTORY/obmenu-generator
          ./install.sh 
         cd ..


        cd $CURRENTDIRECTORY/scrollconky
          ./install.sh 
          cd .. 
  
         cd $CURRENTDIRECTORY/proxy
          ./install.sh 
          cd ..

        cd $CURRENTDIRECTORY/ssh
          ./ssh_enc.sh
          cd .. 

# reboot
