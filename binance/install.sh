#!/bin/sh


login=definitly
CURRENTDIRECTORY=$(pwd)


cp  /usr/local/bin/conky                           /usr/local/bin/conkybinance
cp $CURRENTDIRECTORY/binance-on-off         /usr/local/bin
cp $CURRENTDIRECTORY/binance-on-off.sh      /usr/local/bin
cp $CURRENTDIRECTORY/binanceconky     /usr/local/bin

ln -s  /usr/local/lib/libxcb.so.1.1.0       /usr/local/lib/libxcb.so.2

cp $CURRENTDIRECTORY/binanceconkyrc         /home/$login/.binanceconkyrc
chown  -R      $login:wheel                 /home/$login/.binanceconkyrc
cp $CURRENTDIRECTORY/binancerc         /home/$login/.binancerc
chown  -R      $login:wheel                 /home/$login/.binancerc
cp -R $CURRENTDIRECTORY/binance         /home/$login/.binance
chown  -R      $login:wheel                 /home/$login/.binance


# edit xbindkeysrc

                      echo   '"/usr/local/bin/binance-on-off"'        >> /home/$login/.xbindkeysrc
                      echo   'm:0x40 + c:56'                             >> /home/$login/.xbindkeysrc
                      echo   'Mod4 + b'                                  >> /home/$login/.xbindkeysrc
                     

                      echo   '"/usr/local/bin/binance-on-off.sh"'        >> /home/$login/.xbindkeysrc
                      echo   'm:0x5 + c:56'                             >> /home/$login/.xbindkeysrc
                      echo   'Control+Shift + b'                                  >> /home/$login/.xbindkeysrc