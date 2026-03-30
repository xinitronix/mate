#!/bin/sh
login=$(cat  ../accounts/user | awk '{print $1}' |  head -n1)
CURRENTDIRECTORY=$(pwd)


cp $CURRENTDIRECTORY/jwmrc       /home/$login/.jwmrc
chown  -R      $login:wheel      /home/$login/.jwmrc

#cp $CURRENTDIRECTORY/jwmrc-mjwm      /home/$login/.jwmrc-mjwm
#chown  -R      $login:wheel      /home/$login/.jwmrc-mjwm

cp $CURRENTDIRECTORY/switchwm.sh            /usr/local/bin/switchwm
cp $CURRENTDIRECTORY/jwm-theme.sh           /usr/local/bin/jwm-theme
cp $CURRENTDIRECTORY/switchtheme.desktop    /usr/local/share/applications/switchtheme.desktop