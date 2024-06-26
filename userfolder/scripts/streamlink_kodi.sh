#!/bin/sh

#m3u=$(echo  "streamlink $1 720p" | base64 | tr -d '\r\n')

m3u=$(streamlink --stream-url $1 480p)
sed '$d' list.m3u >> list.m3u.new
mv list.m3u.new list.m3u
rm /tmp/list.m3u
#echo ""http://127.0.0.1:53422/base64/$m3u/"|user-agent=Mozilla/5.0 (X11; FreeBSD amd64; rv:77.0) Gecko/20100101 Firefox/77.0" >> /tmp/list.m3u
echo "$m3u|user-agent=Mozilla/5.0 (X11; FreeBSD amd64; rv:77.0) Gecko/20100101 Firefox/77.0" >> /tmp/list.m3u
./reloadlist
./reloadlist
sleep 3
curl -X POST -H "Content-Type: application/json" -d '{"jsonrpc":"2.0","id":1,"method":"Player.Open","params":{"item":{"channelid":1}}}' http://192.168.8.45:8081/jsonrpc
