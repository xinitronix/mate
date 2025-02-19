#!/bin/sh


login=$(cat  ../accounts/user | awk '{print $1}' |  head -n1)
CURRENTDIRECTORY=$(pwd)


cp  /usr/local/bin/conky                           /usr/local/bin/conkyweather 
cp $CURRENTDIRECTORY/weather-on-off.sh      /usr/local/bin


cp $CURRENTDIRECTORY/weatherconkyrc         /home/$login/.weatherconkyrc
chown  -R      $login:wheel                 /home/$login/.weatherconkyrc
mkdir                                       /home/$login/.weather
cp      $CURRENTDIRECTORY/weathersh         /home/$login/.weather
chown  -R      $login:wheel                 /home/$login/.weather


# edit xbindkeysrc

                      echo   '"/usr/local/bin/weather-on-off.sh"'        >> /home/$login/.xbindkeysrc
                      echo   'm:0x40 + c:25'                             >> /home/$login/.xbindkeysrc
                      echo   'Mod4 + w'                                  >> /home/$login/.xbindkeysrc