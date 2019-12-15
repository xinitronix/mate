#!/bin/sh 
login=definitly
CURRENTDIRECTORY=$(pwd)


cp       obmenu-generator /usr/bin/local
mkdir    /home/$login/.config/obmenu-generator
cp       schema.pl /home/$login/obmenu-generator
cpanm Linux::DesktopFiles
cpanm Data::Dump