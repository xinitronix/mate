#!/bin/sh 
export LD_PRELOAD=/usr/local/lib/libv4l/v4l2convert.so
export LIBV4LCONTROL_FLAGS=6
mpv --no-correct-pts av://v4l2:/dev/video0
mpv --demuxer-lavf-o=video_size=1280x720,input_format=mjpeg av://v4l2:/dev/video0
