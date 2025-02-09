#!/bin/sh


add_user () {      
login=$(echo $line | awk '{print $1}' )
passwd=$(echo $line | awk '{print $2}')
echo $passwd | pw useradd $login -m -g wheel -s /bin/csh -h 0
              pw groupmod video    -m $login
              pw groupmod operator -m $login
}


cat  user  | while read line
  

do

if [ -z "$line" ]
then
     echo "\$var Пустая"
else
     echo "\$var не пустая"
 
     add_user 
     

fi

done


