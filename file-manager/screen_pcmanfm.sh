#!/bin/sh
#SHELL_CWD=$(pwd -P)
#alacritty --working-directory  $SHELL_CWD

dir=$(pwd -P)

var=$(screen -r | awk '(NR == 2)' | awk '{print $1}')

echo $dir
screen -d -r  $var -X stuff "cd $dir ^M"