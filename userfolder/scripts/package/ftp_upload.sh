#!/bin/sh

doas pkg repo /ntfs-2TB/All

ncftpput  -R -z -r 10 -v -u "pi" -p     "639639"     192.168.8.45             /home/pi/      /ntfs-2TB/All
ncftpput     -z -r 10 -v -u "pi" -p     "639639"     192.168.8.45             /home/pi/All   /ntfs-2TB/All/packagesite.txz
ncftpput     -z -r 10 -v -u "pi" -p     "639639"     192.168.8.45             /home/pi/All   /ntfs-2TB/All/meta.txz

pkg repo /ntfs-2TB/All_i386

ncftpput  -R -z -r 10 -v -u "pi" -p     "639639"     192.168.8.45             /home/pi/      /ntfs-2TB/All_i386
ncftpput     -z -r 10 -v -u "pi" -p     "639639"     192.168.8.45             /home/pi/All   /ntfs-2TB/All_i386/packagesite.txz
ncftpput     -z -r 10 -v -u "pi" -p     "639639"     192.168.8.45             /home/pi/All   /ntfs-2TB/All_i386/meta.txz


ncftpput     -z -r 10 -v -u "pi" -p     "639639"     192.168.8.45             /home/pi/All   /ntfs-2TB/All/packagesite.txz
ncftpput     -z -r 10 -v -u "pi" -p     "639639"     192.168.8.45             /home/pi/All_i386   /ntfs-2TB/All_i386/packagesite.txz

sshpass -p 639639 ssh pi@192.168.8.45 'chmod -R 777 /home/pi/All_i386'
sshpass -p 639639 ssh pi@192.168.8.45 'chmod -R 777 /home/pi/All'
