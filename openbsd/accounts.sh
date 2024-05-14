#!/bin/sh


passwd=639639
login=definitly


#create accounts
              
              echo $passwd  | pw useradd $login  -m -g wheel -s /bin/sh -h 0
              
              
              pw groupmod video    -m $login
              pw groupmod operator -m $login
              