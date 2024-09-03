#!/bin/sh


CURRENTDIRECTORY=$(pwd)
#edit rc.conf

                      echo 'ciadpi_enable="YES"'        >>                   /etc/rc.conf 
                      cp  $CURRENTDIRECTORY/byedpi         /usr/local/etc/rc.d/ciadpi
                      chmod 744                            /usr/local/etc/rc.d/ciadpi 
                      cp ciadpi  /usr/local/bin
