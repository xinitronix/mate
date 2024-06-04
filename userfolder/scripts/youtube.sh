#!/bin/sh
             m3u=$(yt-dlp -f $2 -g $1)
  doas       rm /tmp/index.m3u8
#            sed '$d' index.m3u8 >> index.m3u8.new
             echo '#EXTM3U' >> /tmp/index.m3u8
             echo '#EXT-X-VERSION:3' >> /tmp/index.m3u8
             echo '#EXT-X-TARGETDURATION:5' >> /tmp/index.m3u8
             echo '#EXT-X-MEDIA-SEQUENCE:188' >> /tmp/index.m3u8
             echo '#EXT-X-PROGRAM-DATE-TIME:2024-05-30T12:15:40.012+00:00' >> /tmp/index.m3u8
             echo '#EXTINF:5.0,' >> /tmp/index.m3u8
             echo $m3u >>  /tmp/index.m3u8
 #           mv  index.m3u8 /tmp/index.m3u8
             sshpass -p  639639 scp /tmp/index.m3u8  pi@192.168.8.45:/home/pi
             curl -X POST -H "Content-Type: application/json" -d '{"jsonrpc":"2.0","id":1,"method":"Player.Open","params":{"item":{"file":"index.m3u8"}}}' http://192.168.8.45:8081/jsonrpc

  