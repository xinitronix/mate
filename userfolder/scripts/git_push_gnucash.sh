#!/bin/sh

FILE="/home/definitly/2TB/gnucash/definitly.gnucash.gpg"

if [  -f "$FILE" ]; then
    echo "Файл $FILE  существует"
    rm  $FILE
fi




gpg -c --batch --passphrase   /home/definitly/2TB/gnucash/definitly.gnucash

cp /home/definitly/2TB/gnucash/definitly.gnucash.gpg ~/2TB/GIT/gnucash
cd ~/2TB/GIT/gnucash
git config --global user.email "you@example.com"
git config --global user.name "Ваше Имя"
git add --all
git add .
git commit -n
git push ssh://git@github.com/xinitronix/gnucash.git