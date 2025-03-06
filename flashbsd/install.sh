#!/bin/sh

dir=$(dirname "$(realpath $0)")

cp $dir/flashbsd           /usr/local/bin
cp $dir/flashbsd.desktop   /usr/local/share/applications
cp $dir/burn.png           /usr/local/share/pixmaps