#!/bin/sh

dir=$(dirname "$(realpath $0)")

mkdir -p /usr/local/share/file-manager/actions

cp $dir/screen_pcmanfm.sh      /usr/local/bin
cp $dir/openinterminal.desktop /usr/local/share/file-manager/actions