#!/bin/sh 



install_first_user () {

login=$(cat  ../accounts/user | awk '{print $1}' |  head -n1)
CURRENTDIRECTORY=$(pwd)
install_obmenu

}
 
install_all_user () {

cat  ../accounts/user  | while read line

   do
    install_obmenu
   done

}


install_obmenu () {
cp             obmenu-generator    /usr/local/bin
mkdir  -p                          /home/$login/.config/obmenu-generator
chown  -R      $login:wheel        /home/$login/.config/obmenu-generator
cp             schema.pl           /home/$login/.config/obmenu-generator
/usr/local/bin/cpanm Linux::DesktopFiles
#/usr/local/bin/gsed -i -e  '1 s/^/use XSLoader;\n/' /usr/local/lib/perl5/site_perl/mach/5.32/GDBM_File.pm
su $login -c 'obmenu-generator -p -i'
}


install_first_user