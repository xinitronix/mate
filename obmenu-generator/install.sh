#!/bin/sh 
login=definitly
CURRENTDIRECTORY=$(pwd)


cp             obmenu-generator    /usr/local/bin
mkdir                              /home/$login/.config/obmenu-generator
chown  -R      $login:wheel        /home/$login/.config/obmenu-generator
cp             schema.pl           /home/$login/.config/obmenu-generator
cpanm Linux::DesktopFiles
cpanm Data::Dump
sed -i -e  '1 s/^/use XSLoader;\n/' /usr/local/lib/perl5/site_perl/mach/5.30/GDBM_File.pm
