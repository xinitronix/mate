#!/bin/sh


CURRENTDIRECTORY=$(pwd)
#edit rc.conf

                      echo 'xboxdrv_enable="YES"'        >>                   /etc/rc.conf 
                      cp  $CURRENTDIRECTORY/xboxdrv        /usr/local/etc/rc.d
                      chmod 744                            /usr/local/etc/rc.d/xboxdrv
                      fetch  https://github.com/xinitronix/bin/raw/master/xboxdrv -o /tmp/xboxdrv
                      chmod +x /tmp/xboxdrv
                      cp /tmp/xboxdrv /usr/local/bin
