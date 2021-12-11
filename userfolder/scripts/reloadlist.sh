#!/usr/local/bin/bash

#The Webserver interface must be enabled. You can find it in Settings->Services->Webserver
#Set a custom port like 6969 (don't use 80 or 8080)
#Edit the $URL var with your custom port
sshpass -p  639639 scp list.m3u  pi@192.168.8.45:/var/www/html

JSON='{"jsonrpc":"2.0","method":"Addons.SetAddonEnabled","params":{"addonid":"pvr.iptvsimple","enabled":"toggle"},"id":1}'
PLAY='{"jsonrpc":"2.0","id":1,"method":"Player.Open","params":{"item":{"channelid":17}}}'
URL="http://192.168.8.45:8081/jsonrpc"
curl -s -X POST -H "Content-Type: application/json" -d $JSON $URL
curl -s -X POST -H "Content-Type: application/json" -d $PLAY $URL
