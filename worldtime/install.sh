#!/bin/sh

dir=$(dirname "$(realpath $0)")

login=$(cat  $dir/../accounts/user | awk '{print $1}' |  head -n1)

cp  /usr/local/bin/conky                           /usr/local/bin/conkytime 
cp $dir/timeconky-on-off.sh                        /usr/local/bin
cp $dir/timeconkyrc                                /home/$login/.timeconkyrc
chown  -R      $login:wheel                        /home/$login/.timeconkyrc

# edit xbindkeysrc

                      echo   '"/usr/local/bin/timeconky-on-off.sh"'             >> /home/$login/.xbindkeysrc
                      echo   'm:0xe + c:28'                                     >> /home/$login/.xbindkeysrc
                      echo   'Control+Alt + t'                                  >> /home/$login/.xbindkeysrc
        