#!/bin/sh
CURRENTDIRECTORY=$(pwd)
install_first_user () {

login=$(cat  ../accounts/user | awk '{print $1}' |  head -n1)
CURRENTDIRECTORY=$(pwd)
install_tint2

}
 
install_all_user () {

cat  ../accounts/user  | while read line

   do
    login=$(echo $line | awk '{print $1}' )
    echo $login
    install_tint2 
   done

}


install_tint2 ()  {

echo "start"
echo $login
             cp $CURRENTDIRECTORY/tint2-on-off   /usr/local/bin

# edit xbindkeysrc

            echo   '"/usr/local/bin/tint2-on-off"'        >> /home/$login/.xbindkeysrc
            echo   'm:0x40 + c:28'                        >> /home/$login/.xbindkeysrc
            echo   'Mod4 + t'                             >> /home/$login/.xbindkeysrc


mkdir -p  /home/$login/.config/tint2
rm /home/$login/.config/tint2/tint2rc
sh ./tint2rc.sh
chown  -R     $login:wheel  /home/$login/.config/
chown  -R     $login:wheel  /home/$login/.config/tint2
}



install_all_user 

