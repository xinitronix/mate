#!/bin/sh


passwd=639639
login=definitly
passwd1=639639
login1=ff
passwd2=639639
login2=rtorrent
passwd3=639639
login3=dwm

#create accounts
              echo $passwd1 | pw useradd $login1 -m -g wheel -s /bin/csh -h 0
              echo $passwd  | pw useradd $login  -m -g wheel -s /bin/csh -h 0
              echo $passwd2 | pw useradd $login2 -m -g wheel -s /bin/csh -h 0
              echo $passwd3 | pw useradd $login3 -m -g wheel -s /bin/sh -h 0
              pw groupmod video    -m $login
              pw groupmod operator -m $login
              pw groupmod vboxusers -m $login
