#!/bin/sh

mpv     --profile=fast --hwdec=auto-safe --v --ytdl-format=$2 $1
