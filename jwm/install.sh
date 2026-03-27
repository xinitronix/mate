#!/bin/sh
login=$(cat  ../accounts/user | awk '{print $1}' |  head -n1)
CURRENTDIRECTORY=$(pwd)


cp $CURRENTDIRECTORY/jwmrc       /home/$login/.jwmrc
chown  -R      $login:wheel      /home/$login/.jwmrc

#cp $CURRENTDIRECTORY/jwmrc-mjwm      /home/$login/.jwmrc-mjwm
#chown  -R      $login:wheel      /home/$login/.jwmrc-mjwm