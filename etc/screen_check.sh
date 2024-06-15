#!/bin/sh

var=$(screen -r | awk '(NR == 2)' | awk '{print $1}')
var2=$(screen -r | grep Dead)


if [ -z "$var2" ]
then


if [ -z "$var" ]
then
     echo "\$var Пустая"
     screen 
else
     echo "\$var не пустая"
     screen -r $var
fi

else 
screen -wipe
screen 


fi