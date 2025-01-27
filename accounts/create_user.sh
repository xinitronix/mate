#!/bin/sh

cat  user  | while read line
   do
      
login=$(echo $line | awk '{print $1}' )
passwd=$(echo $line | awk '{print $2}')
echo $passwd | pw useradd $login -m -g wheel -s /bin/csh -h 0
              pw groupmod video    -m $login
              pw groupmod operator -m $login
              pw groupmod vboxusers -m $login

   done