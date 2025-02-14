#!/bin/sh

dir=$(dirname "$(realpath $0)")

login=$(cat  $dir/../accounts/user | awk '{print $1}' |  head -n1)

        cp $dir/switchscreen     /usr/local/bin
        cp $dir/togglescreen.sh  /usr/local/bin


# edit xbindkeysrc

                      echo   '"/usr/local/bin/togglescreen.sh"'          >> /home/$login/.xbindkeysrc
                      echo   'm:0x40 + c:53'                             >> /home/$login/.xbindkeysrc
                      echo   'Mod4 + x'                                  >> /home/$login/.xbindkeysrc
        