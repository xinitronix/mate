#!/bin/sh
ssh pi@192.168.8.45 killall -9 streamlink
ssh pi@192.168.8.45 ./drm.sh $1 $2 &
sleep 10
curl -X POST -H "Content-Type: application/json" -d '{"jsonrpc":"2.0","id":1,"method":"Player.Open","params":{"item":{"file":"drm.mp4"}}}'  http://192.168.8.45:8081/jsonrpc