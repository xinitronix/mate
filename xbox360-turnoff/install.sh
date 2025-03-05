#!/bin/sh

dir=$(dirname "$(realpath $0)")

cp $dir/xbox360-controllers /usr/local/bin
cp $dir/xbox360-turnoff     /usr/local/bin
cp $dir/xbox360-turnoff.desktop    /usr/local/share/applications
cp $dir/Xbox360.png                /usr/local/share/pixmaps