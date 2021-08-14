#!/bin/sh
rm -R ~/.mozilla/firefox
sshpass -p  639639 scp -r  pi@192.168.8.45:/home/pi/tinder/3/firefox ~/.mozilla
sshpass -p  639639 scp -r  pi@192.168.8.45:/home/pi/TelegramDesktop ~/.local/share
#fetch https://addons.mozilla.org/firefox/downloads/file/3816867/ublock_origin-1.37.2-an+fx.xpi
#firefox ublock_origin-1.37.2-an+fx.xpi
