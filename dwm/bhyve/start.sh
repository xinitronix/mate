#!/bin/sh
X :3 &
export DISPLAY=:3
exec   setxkbmap -layout us,ru -option "grp:alt_shift_toggle,grp_led:scroll" -variant ",winkeys"  & 
 barriers -a 192.168.8.100  --config ~/bhyve/win   --disable-crypto --disable-client-cert-checking --display :3

./detach.sh &
./win10.sh
