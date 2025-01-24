#!/bin/sh
export VK_ICD_FILENAMES=/usr/local/share/vulkan/icd.d/nvidia_icd.json
export WINEPREFIX=/ntfs-2TB/wine
proton "/ntfs-2TB/wine/drive_c/Program Files (x86)/Steam/steam.exe" -no-browser