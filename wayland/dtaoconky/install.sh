#!/bin/sh

login=$(cat  ../../accounts/user | awk '{print $1}' |  head -n1)
CURRENTDIRECTORY=$(pwd)


cp $CURRENTDIRECTORY/dtaoconky             /usr/local/bin
cp $CURRENTDIRECTORY/dtao                  /usr/local/bin
cp $CURRENTDIRECTORY/dtaoconkyrc           /home/$login/.dtaoconkyrc
chown  -R      $login:wheel                /home/$login/.dtaoconkyrc


cp $CURRENTDIRECTORY/dtao-on-off          /usr/local/bin

