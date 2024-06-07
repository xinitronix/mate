url=$(yt-dlp -f $2 -g "$1")
yt-dlp $url -o -  | cvlc - 
