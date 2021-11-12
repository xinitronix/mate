#!/bin/sh


CURRENTDIRECTORY=$(pwd)
#edit rc.conf

                      echo 'xboxdrv_enable="YES"'        >>                   /etc/rc.conf 
                      cp  $CURRENTDIRECTORY/xboxdrv        /usr/local/etc/rc.d
                      chmod 744                            /usr/local/etc/rc.d/xboxdrv
                      fetch  https://github.com/xinitronix/bin/raw/master/xboxdrv
                      chmod +x xboxdrv
                      cp xboxdrv /usr/local/bin
