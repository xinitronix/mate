#!/bin/sh
ncftpput  -R -z -r 10 -v -u "pi" -p  "639639"     192.168.8.45             /home/pi/     ~/All
ncftpput  -z -r 10 -v -u "pi" -p     "639639"     192.168.8.45             /home/pi/All  ~/All/packagesite.txz
ncftpput  -z -r 10 -v -u "pi" -p     "639639"     192.168.8.45             /home/pi/All  ~/All/meta.txz


sshpass -p 639639 ssh pi@192.168.8.45 'chmod -R 777 /home/pi/All'
