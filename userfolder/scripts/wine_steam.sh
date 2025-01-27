#!/bin/sh


killall -9 wine.bin
killall -9 wine64.bin
var=$(pkg info | grep proton)

echo $var

if [ -z "$var" ]
then
     doas pkg install -r myrepo  -y wine-proton mesa-dri
else
     echo "\$var не пустая"
fi




export VK_ICD_FILENAMES=/usr/local/share/vulkan/icd.d/nvidia_icd.json
export WINEPREFIX=/ntfs-2TB/wine
proton "/media/Steam/steam.exe" -no-browser