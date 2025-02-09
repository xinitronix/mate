#!/bin/sh

CURRENTDIRECTORY=$(pwd)

install_first_user () {
login=$(cat  ../accounts/user | awk '{print $1}' |  head -n1)
install_dzen2

}


install_all_user () {

cat  ../accounts/user  | while read line

   do


if [ -z "$line" ]
then
     echo "\$var Пустая"
else
     echo "\$var не пустая"
 
     login=$(echo $line | awk '{print $1}' )
     echo $login
     install_dzen2
     

      fi
       done

}

install_dzen2 () {

cp $CURRENTDIRECTORY/switchbackground      /usr/local/bin
cp $CURRENTDIRECTORY/dzenconky             /usr/local/bin
cp $CURRENTDIRECTORY/dzenconkyrc           /home/$login/.dzenconkyrc
chown  -R      $login:wheel                /home/$login/.dzenconkyrc


cp $CURRENTDIRECTORY/dzen2-on-off          /usr/local/bin


# edit xbindkeysrc

                      echo   '"/usr/local/bin/dzen2-on-off"'             >> /home/$login/.xbindkeysrc
                      echo   'm:0x40 + c:40'                             >> /home/$login/.xbindkeysrc
                      echo   'Mod4 + d'                                  >> /home/$login/.xbindkeysrc
   }


install_all_user 