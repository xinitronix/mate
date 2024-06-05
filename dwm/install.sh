#!/bin/sh
 
login=dwm

    cp config.sh /home/$login
    cp xinitrc   /home/$login/.xinitrc
    cp Xdefaults /home/$login/.Xdefaults

    chown  -R      $login:wheel   /home/$login/.xinitrc
    chown  -R      $login:wheel   /home/$login/.Xdefaults