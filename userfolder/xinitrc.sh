#!/bin/sh 

rm  .xinitrc

 echo 'export LANG='ru_RU.UTF-8'' >> .xinitrc
 echo 'export LC_ALL='ru_RU.UTF-8'' >> .xinitrc
 echo 'exec setxkbmap -layout us,ru -option "grp:alt_shift_toggle,grp_led:scroll" -variant ",winkeys" &' >> .xinitrc
 echo 'dzenconky &' >> .xinitrc
 echo 'tint2 &' >> .xinitrc
 echo 'fbpanel &' >> .xinitrc
 echo 'xbindkeys' >> .xinitrc
 echo 'idesk &' >> .xinitrc
 echo 'openbox-session' >> .xinitrc

