#!/bin/sh
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
git add --all
git add .
git commit -n
#git push https://github.com/xinitronix/mate.git
#git push ssh://git@github.com/xinitronix/mate.git
git push both
sshpass -p 639639 ssh pi@192.168.8.45 "cd /opt/git/mate.git &&  git archive --format=zip --output /var/www/html/master.zip master" mate_2025.02.08