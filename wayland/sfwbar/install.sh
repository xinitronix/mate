#!/bin/sh
login=$(cat  ../../accounts/user | awk '{print $1}' |  head -n1)
CURRENTDIRECTORY=$(pwd)

              cp $CURRENTDIRECTORY/sfwbar-on-off   /usr/local/bin

