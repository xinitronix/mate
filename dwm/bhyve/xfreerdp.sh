#!/bin/sh
X &
export DISPLAY=:0
xfreerdp /u:vcore  /p:639639 /w:1920 /h:1080  /v:192.168.8.113  /drive:home,/home/dwm  /sound
