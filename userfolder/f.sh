#!/bin/sh
rm -R ~/.mozilla/firefox
scp -r  pi@192.168.8.45:/home/pi/tinder/3/firefox ~/.mozilla
scp -r  pi@192.168.8.45:/home/pi/TelegramDesktop ~/.local/share
