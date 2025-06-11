#!/bin/sh
dir=$(pwd -P)
var=$(screen -r | awk '(NR == 2)' | awk '{print $1}')

echo $dir
screen -d -r  $var -X stuff "cd $dir ^M "