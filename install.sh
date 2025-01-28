#!/bin/sh

mkdir -p /usr/local/etc/pkg/repos
cp  etc/freebsd.conf  /usr/local/etc/pkg/repos

CURRENTDIRECTORY=$(pwd)

           cd $CURRENTDIRECTORY/userfolder/scripts/package
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
         cd $CURRENTDIRECTORY/obmenu-generator
          ./install.sh 
         cd ..
         ./userfolder.sh

        cd $CURRENTDIRECTORY/scrollconky
          ./install.sh 
          cd .. 

# reboot
