#!/bin/sh
              m3u=$(yt-dlp -f $2 -g $1)
              sed '$d' index.m3u8 >> index.m3u8.new
              echo $m3u >>  index.m3u8.new
              mv  index.m3u8.new /tmp/index.m3u8
              sshpass -p  639639 scp /tmp/index.m3u8  pi@192.168.8.45:/home/pi
              curl -X POST -H "Content-Type: application/json" -d '{"jsonrpc":"2.0","id":1,"method":"Player.Open","params":{"item":{"file":"index.m3u8"}}}' http://192.168.8.45:8081/jsonrpc

  