#!/bin/sh 
login=$(cat  ../accounts/user | awk '{print $1}' |  head -n1)
CURRENTDIRECTORY=$(pwd)


cp             obmenu-generator    /usr/local/bin
mkdir  -p                          /home/$login/.config/obmenu-generator
chown  -R      $login:wheel        /home/$login/.config/obmenu-generator
cp             schema.pl           /home/$login/.config/obmenu-generator
/usr/local/bin/cpanm Linux::DesktopFiles
#/usr/local/bin/gsed -i -e  '1 s/^/use XSLoader;\n/' /usr/local/lib/perl5/site_perl/mach/5.32/GDBM_File.pm
su $login -c 'obmenu-generator -p -i'
