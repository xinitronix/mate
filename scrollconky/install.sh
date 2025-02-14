#!/bin/sh

dir=$(dirname "$(realpath $0)")

login=$(cat  $dir/../accounts/user | awk '{print $1}' |  head -n1)

cp  /usr/local/bin/conky                           /usr/local/bin/conkyscroll

cp $dir/scrollconky                  /usr/local/bin
cp $dir/scrollconkyrc                /home/$login/.scrollconkyrc
cp $dir/conkyscroll-on-off           /usr/local/bin

# edit xbindkeysrc
                       echo   '"/usr/local/bin/conkyscroll-on-off"'        >> /home/$login/.xbindkeysrc
                       echo   'm:0x48 + c:39'                              >> /home/$login/.xbindkeysrc
                       echo   'Alt+Mod4 + s'                               >> /home/$login/.xbindkeysrc