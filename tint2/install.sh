#!/bin/sh

dir=$(dirname "$(realpath $0)")

install_first_user () {

login=$(cat  $dir/../accounts/user | awk '{print $1}' |  head -n1)
CURRENTDIRECTORY=$(pwd)
install_tint2

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
    echo $login
    install_tint2 

fi

  done

}

install_tint2 ()  {

           cp $dir/tint2-on-off   /usr/local/bin

# edit xbindkeysrc

            echo   '"/usr/local/bin/tint2-on-off"'        >> /home/$login/.xbindkeysrc
            echo   'm:0x40 + c:28'                        >> /home/$login/.xbindkeysrc
            echo   'Mod4 + t'                             >> /home/$login/.xbindkeysrc

mkdir -p  /home/$login/.config/tint2
rm /home/$login/.config/tint2/tint2rc
chown  -R     $login:wheel  /home/$login/.config/
chown  -R     $login:wheel  /home/$login/.config/tint2
cd /home/$login/.config/tint2
sh  $dir/tint2rc.sh
cd -
}

install_all_user 