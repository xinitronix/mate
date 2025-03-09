#!/bin/sh
file="autostart.sh"

if [ -f "$file" ] ; then
    rm "$file"
fi
 echo 'feh --bg-scale /ntfs-2TB/wallpaper/wallhaven-q6gj8d.jpg &' >> autostart.sh
 echo 'xxkb &' >> autostart.sh
 echo 'firefox &' >> autostart.sh
 echo '#~/scripts/x2.sh &' >> autostart.sh
 echo 'alacritty -e screen_check.sh &' >> autostart.sh
