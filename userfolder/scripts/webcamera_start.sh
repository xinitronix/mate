#!/usr/bin/env bash
operation=$1
DATE="$(date +"%H-%M-%S")"
case ${operation} in
    start)

arecord --device=plughw:1,0   --rate 44100  -f S16_LE  -f cd -t wav   output.wav   > /dev/null 2>&1 &
arecord_pid=$!
echo  ${arecord_pid} > /tmp/webcamera_arecord_pid
ffmpeg -f v4l2 -r 25 -s 640x480 -i /dev/video0 output.avi   > /dev/null 2>&1 &
ffmpeg_pid=$!
echo ${ffmpeg_pid} >   /tmp/webcamera_ffmpeg_pid
    ;;



   stop)
    kill $(cat /tmp/webcamera_arecord_pid)
    rm -rf    $(cat /tmp/webcamera_arecord_pid)
    kill $(cat /tmp/webcamera_ffmpeg_pid)
    rm -rf $(cat /tmp/webcamera_ffmpeg_pid)
    ffmpeg -i output.avi -i output.wav -c:v copy -c:a aac $DATE.mp4  > /dev/null 2>&1
    rm   output.wav
    rm output.avi  
    ;;

esac
