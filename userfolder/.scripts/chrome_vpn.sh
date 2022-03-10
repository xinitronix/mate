#!/bin/sh

xhost +local:vpn
doas su -l vpn  -c  'chrome --proxy-server="socks5://127.0.0.1:9050"'
