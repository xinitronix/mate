#!/bin/sh

mkdir -p /usr/local/etc/pkg/repos
cp  etc/freebsd.conf  /usr/local/etc/pkg/repos

CURRENTDIRECTORY=$(pwd)

           cd $CURRENTDIRECTORY/userfolder/scripts/package
           ./install.sh
           cd $CURRENTDIRECTORY

          ./accounts.sh
          ./config.sh
          ./flash.sh
          ./userfolder.sh
          #./yandexdisk.sh
          
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
          cd $CURRENTDIRECTORY/postinstall
          ./install.sh
          cd ..  
          cd $CURRENTDIRECTORY/noteconky
          ./install.sh
          cd .. 
          cd $CURRENTDIRECTORY/rtorrent
          ./install.sh
          cd .. 
          cd $CURRENTDIRECTORY/micro_httpd
          ./install.sh
          cd .. 
            
          cd $CURRENTDIRECTORY/mpd5
          ./install.sh
          cd .. 

          cd $CURRENTDIRECTORY/weatherconky
          ./install.sh
          cd ..  
          cd $CURRENTDIRECTORY/monitoring
          ./install.sh
          cd ..
          cd $CURRENTDIRECTORY/mpvd
          ./install.sh
          cd ..
          cd $CURRENTDIRECTORY/tor
          ./install.sh 
          cd .. 
          cd $CURRENTDIRECTORY/worldtime
          ./install.sh 
          cd .. 
          
          cd $CURRENTDIRECTORY/scrollconky
          ./install.sh 
          cd .. 


          cd $CURRENTDIRECTORY/webcamd
          ./install.sh 
          cd .. 
         
   #       cd $CURRENTDIRECTORY/xscreensaver
   #       ./install.sh 
   #       cd .. 
          
          cd $CURRENTDIRECTORY/binance
          ./install.sh 
          cd .. 

          cd $CURRENTDIRECTORY/obmenu-generator
          ./install.sh 
          cd ..
          
          cd $CURRENTDIRECTORY/xboxdrv
          ./install.sh 
          cd .. 
          
          reboot
