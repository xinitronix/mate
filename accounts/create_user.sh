#!/bin/sh

dir=$(dirname "$(realpath $0)")

add_user () {      
login=$(echo $line | awk '{print $1}' )
passwd=$(echo $line | awk '{print $2}')

if ! getent passwd $login  > /dev/null ; then
echo "пользователь $login  не существует"
echo "создаем пользователя $login"
echo $passwd | pw useradd $login -m -g wheel -s /bin/csh -h 0
              pw groupmod video    -m $login
              pw groupmod operator -m $login
      fi
}

cat  $dir/user  | while read line
  
do

if [ -z "$line" ]
then
     echo "\$var Пустая"
else
    
 add_user 

   fi
done


