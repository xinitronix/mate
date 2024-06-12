#!/bin/sh
 
login=dwm
    cp dwm_bar.sh                            /home/$login
    cp config.h                                   /home/$login
    cp xinitrc                                      /home/$login/.xinitrc
    cp Xdefaults                                /home/$login/.Xdefaults
    cp -r applications                        /home/$login/.local/share
    mkdir -p                                       /home/$login/.config/xfe
    cp -r    scripts                              /home/$login/.config/xfe/
    cp -r   bhyve                                /home/$login
    cp make.sh                                  /home/$login
    chown  -R      $login:wheel        /home/$login/bhyve
    chown  -R      $login:wheel        /home/$login/make.sh
    chown  -R      $login:wheel        /home/$login/.config/
    chown  -R      $login:wheel        /home/$login/dwm_bar.sh
    chown  -R      $login:wheel        /home/$login/.xinitrc
    chown  -R      $login:wheel        /home/$login/.Xdefaults
    chown  -R      $login:wheel        /home/$login/config.h
    chown  -R      $login:wheel        /home/$login/.local/share/applications
    su dwm -c 'update-desktop-database /home/dwm/.local/share/applications'