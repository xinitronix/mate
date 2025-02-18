#!/bin/sh 

dir=$(dirname "$(realpath $0)")

if test "$(id -u)" -ne 0; then
	printf "%s must be run as root\n" "${0##*/}"
	exit 1
fi

if [  -f "/usr/local/etc/mate.pid/obmenu_install.pid" ]; then
    echo "Файл  obmenu_install.pid  существует"
    echo "Пропускаем установку obmenu"
    exit 
fi

install_first_user () {

login=$(cat  $dir/../accounts/user | awk '{print $1}' |  head -n1)
CURRENTDIRECTORY=$(pwd)
install_obmenu

}
 
install_all_user () {

cat  $dir/../accounts/user  | while read line

   do

if [ -z "$line" ]
then
     echo "\$var Пустая"
else
     echo "\$var не пустая"
 
     login=$(echo $line | awk '{print $1}' )
    install_obmenu
fi
   done
}

install_obmenu () {
cp             $dir/obmenu-generator    /usr/local/bin
mkdir  -p                          /home/$login/.config/obmenu-generator
chown  -R      $login:wheel        /home/$login/.config/
chown  -R      $login:wheel        /home/$login/.config/obmenu-generator
cp             $dir/schema.pl           /home/$login/.config/obmenu-generator
/usr/local/bin/cpanm Linux::DesktopFiles
#/usr/local/bin/gsed -i -e  '1 s/^/use XSLoader;\n/' /usr/local/lib/perl5/site_perl/mach/5.32/GDBM_File.pm
su $login -c '/usr/local/bin/obmenu-generator -p -i'
}

install_all_user

mkdir -p /usr/local/etc/mate.pid
touch /usr/local/etc/mate.pid/obmenu_install.pid