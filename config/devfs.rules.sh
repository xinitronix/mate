#!/bin/sh

 file="/etc/devfs.rules"

if [ -f "$file" ] ; then
    rm "$file"
fi

                    echo '[localrules=10]'                               >>   /etc/devfs.rules
                    echo 'add path 'usb/*'    mode 0666 group operator'  >>   /etc/devfs.rules
                    echo 'add path 'da*'      mode 0666 group operator'  >>   /etc/devfs.rules
                    echo 'add path 'video*'   mode 0666 group operator'  >>   /etc/devfs.rules