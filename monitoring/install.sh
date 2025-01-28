#!/bin/sh
CURRENTDIRECTORY=$(pwd)
login=$(cat  ../accounts/user | awk '{print $1}' |  head -n1)

mkdir -p /home/$login/.scripts
chown  -R      $login:wheel   /home/$login/.scripts

cp $CURRENTDIRECTORY/mon       /home/$login/.scripts
chown  -R      $login:wheel    /home/$login/.scripts/mon

#create crontab file
                    crontab -l                                               >  mycron
                    echo "*/1 * * * *    /home/$login/.scripts/mon"          >> mycron
                    echo "*/10 * * * *   /home/$login/.scripts/gr_create.sh" >> mycron
                    echo "00 1 * * * /usr/sbin/ntpdate 1.ru.pool.ntp.org"    >> mycron 
                    crontab mycron
                    rm mycron

#копирование cpuload

cp $CURRENTDIRECTORY/cpuload             /usr/local/bin
mkdir -p                                 /usr/local/www/nginx
cp $CURRENTDIRECTORY/index.html          /usr/local/www/nginx