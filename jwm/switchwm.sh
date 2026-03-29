#!/bin/sh
XINITRC=$HOME/.xinitrc
WM_JWM=$(grep -r jwm $HOME/.xinitrc)

set_jwm() {
echo "сейчас установлен openbox,меняем на jwm"
gsed  -i '/openbox/d' $XINITRC
gsed  -i '/tint2/d' $XINITRC
gsed  -i '/fbpanel/d' $XINITRC
gsed  -i '/conky/d' $XINITRC
echo "exec jwm" >>   $XINITRC
}


set_openbox() {
echo "сейчас установлен jwm,меняем на openbox"
gsed  -i '/jwm/d' $XINITRC
echo "dzenconky &" >>   $XINITRC
echo "tint2 &" >>   $XINITRC
echo "fbpanel &" >>   $XINITRC
echo "exec openbox-session" >>   $XINITRC

}


    if [ -z "$WM_JWM" ]
then
    
     set_jwm
else
     
     set_openbox
   fi