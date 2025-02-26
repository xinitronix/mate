#!/bin/sh

file="/usr/local/etc/sudoers"

if [ -f "$file" ] ; then
    rm "$file"
fi
                    echo -e "root ALL=(ALL:ALL) ALL"              >>        /usr/local/etc/sudoers
                    echo -e "%wheel ALL=(ALL:ALL) ALL"            >>        /usr/local/etc/sudoers
                    echo -e "%wheel ALL=(ALL:ALL) NOPASSWD: ALL"  >>        /usr/local/etc/sudoers
