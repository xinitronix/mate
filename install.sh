#!/bin/sh

dir=$(dirname "$(realpath $0)")

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

           tar -xf $dir/userfolder/userfolder.tar.xz -C  /tmp
           $dir/scripts/install.sh
           $dir/accounts/create_user.sh
           $dir/config.sh

 for i in $(cat $dir/install_item); do
          cd $dir/$i
          ./install.sh
          cd ..
    done
