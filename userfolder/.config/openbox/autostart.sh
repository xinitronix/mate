
pic=$(ls | grep *jpg)

feh --bg-scale ~/.config/openbox/wallpaper/1.jpg
setxkbmap -layout us,ru -option "grp:alt_shift_toggle,grp_led:scroll" -variant ",winkeys"  &  
#xcompmgr -cfCF &
xset m 0 & 
xxkb &
firefox &
#~/scripts/x2.sh &

alacritty -e screen_check.sh &
doas mount  /compat/linux/dev/shm