#!/bin/sh

var=$(screen -r | awk '(NR == 2)' | awk '{print $1}')

if [ -z "$var" ]
then
     echo "\$var Пустая"
     screen 
else
     echo "\$var не пустая"
     screen -r $var
fi