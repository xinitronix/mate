#!/bin/sh

 file="/etc/fstab"

if [ -f "$file" ] ; then
    rm "$file"
fi

 #                   echo 'linproc /compat/linux/proc linprocfs rw  0 0'                                            >>    /etc/fstab
 #                   echo 'tmpfs  /tmp   tmpfs rw 0'                                                                >>    /etc/fstab
 #                   echo 'devfs  /compat/linux/dev devfs rw,late  0  0'                                            >>    /etc/fstab
 #                   echo 'fdescfs   /compat/linux/dev/fd   fdescfs    rw,late,linrdlnk  0  0'                      >>    /etc/fstab
 #                   echo 'linsysfs  /compat/linux/sys linsysfs rw  0 0'                                            >>    /etc/fstab
                     echo 'fdesc /dev/fd fdescfs  rw  0 0'                                                          >>    /etc/fstab
                     echo 'proc  /proc   procfs   rw  0 0'                                                          >>    /etc/fstab
                     echo '/dev/da0 /mnt  ufs  rw,noauto 0 0'                                                       >>    /etc/fstab
 #                   echo 'tmpfs  /compat/linux/dev/shm  tmpfs rw,mode=1777 0 0'                                    >>    /etc/fstab
 #                   echo '/dev/ada0p2 /ntfs-2TB  ntfs  mountprog=/usr/local/bin/ntfs-3g,late,rw,uid=1002    0   0' >>    /etc/fstab
