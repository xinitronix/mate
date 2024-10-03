#!/bin/sh

 for i in `cat /tmp/pkg_upgrade.txt` ; do 

         sshpass -p 639639 ssh pi@192.168.8.45 "rm ~/All/$i-*"


  done 