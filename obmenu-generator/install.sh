#!/bin/sh 
login=definitly
CURRENTDIRECTORY=$(pwd)


cp       obmenu-generator /usr/local/bin
mkdir    /home/$login/.config/obmenu-generator
cp       schema.pl /home/$login/.config/obmenu-generator
cpanm Linux::DesktopFiles
cpanm Data::Dump