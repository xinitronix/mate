#!/bin/sh

var=$('pkg info | grep proton')

echo $var

if [ -z "$var" ]
then
     doas pkg install -r myrepo  -y wine-proton
else
     echo "\$var не пустая"
fi




export VK_ICD_FILENAMES=/usr/local/share/vulkan/icd.d/nvidia_icd.json
export WINEPREFIX=/ntfs-2TB/wine
proton "/ntfs-2TB/wine/drive_c/Program Files (x86)/Steam/steam.exe" -no-browser