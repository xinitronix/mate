#!/bin/sh
export DISPLAY=:0.0
export XAUTHORITY=/home/definitly/.Xauthority
/usr/local/bin/notify-send --urgency normal --expire-time=1000000000 -i typing-monitor -h int:x:1500 -h int:y:1500 "SIM" "Не забыть вынуть симку из роутера"

