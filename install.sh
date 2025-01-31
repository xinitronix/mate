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


       for i in $(cat install_item); do

    cd $CURRENTDIRECTORY/$i
     ./install.sh
     cd ..
         done


# reboot
