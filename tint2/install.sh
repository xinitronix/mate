#!/bin/sh
login=$(cat  ../accounts/user | awk '{print $1}' |  head -n1)
CURRENTDIRECTORY=$(pwd)

              cp $CURRENTDIRECTORY/tint2-on-off   /usr/local/bin

# edit xbindkeysrc

            echo   '"/usr/local/bin/tint2-on-off"'        >> /home/$login/.xbindkeysrc
            echo   'm:0x40 + c:28'                        >> /home/$login/.xbindkeysrc
            echo   'Mod4 + t'                             >> /home/$login/.xbindkeysrc


mkdir -p  /home/$login/.config/tint2
rm /home/$login/.config/tint2/tint2rc
sh ./tint2rc.sh

chown  -R     $login:wheel  /home/$login/.config/tint2