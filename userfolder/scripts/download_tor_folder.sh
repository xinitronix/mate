#!/bin/sh
doas mkdir -p /home/vpn/.mozilla
doas mkdir -p /home/vpn/.config
doas chown -R vpn  /home/vpn/.mozilla
doas chmod -R 0777 /home/vpn/.mozilla

doas chown -R vpn   /home/vpn/.config/
doas chmod -R 0777  /home/vpn/.config/
sshpass -p  639639 scp -r  pi@192.168.8.45:/home/pi/firefox_vpn/firefox /home/vpn/.mozilla
sshpass -p  639639 scp -r  pi@192.168.8.45:/home/pi/chromium.tar.gz  /home/vpn/.config
doas chown -R vpn  /home/vpn/.mozilla
doas chmod -R 0777 /home/vpn/.mozilla

doas tar xfvz /home/vpn/.config/chromium.tar.gz -C /home/vpn/.config

doas chown -R vpn   /home/vpn/.config/chromium
doas chmod -R 0777  /home/vpn/.config/chromium