url=$(yt-dlp -f $2 -g "$1")
yt-dlp $url -o 1.avi  | cvlc 1.avi
