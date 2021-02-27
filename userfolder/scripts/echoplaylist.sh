#!/bin/sh


 sed '$d' list.m3u >> list.m3u.new
 mv list.m3u.new list.m3u
 echo $1'|user-agent=Mozilla/5.0 (X11; FreeBSD amd64; rv:77.0) Gecko/20100101 Firefox/77.0 ' >> list.m3u
