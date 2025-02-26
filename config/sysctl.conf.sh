#!/bin/sh

 file="/etc/sysctl.conf"

if [ -f "$file" ] ; then
    rm "$file"
fi

                   echo 'kern.coredump=0'                                       >>           /etc/sysctl.conf 
                   echo 'kern.ipc.shm_allow_removed=1'                          >>           /etc/sysctl.conf
                   echo "vfs.usermount=1"                                       >>           /etc/sysctl.conf
                   echo "security.bsd.unprivileged_chroot=1"                    >>           /etc/sysctl.conf 