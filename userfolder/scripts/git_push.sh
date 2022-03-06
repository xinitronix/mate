#!/bin/sh

FILE="/home/definitly/2TB/gnucash/definitly.gnucash.gpg"

if [  -f "$FILE" ]; then
    echo "Файл $FILE  существует"
    rm  $FILE
fi




gpg -c --batch --passphrase  /home/definitly/2TB/gnucash/definitly.gnucash

cp /home/definitly/2TB/gnucash/definitly.gnucash.gpg ~/gnucash
cd ~/gnucash
git add --all
git add .
git commit -n
git push ssh://git@github.com/xinitronix/gnucash.git