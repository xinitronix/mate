#!/bin/sh

file="/etc/rc.conf"

if [ -f "$file" ] ; then
    rm "$file"
fi
                     echo 'zfs_enable="yes"'                                          >>           /etc/rc.conf
                     echo 'dbus_enable="yes"'                                         >>           /etc/rc.conf
                     echo 'linux_enable="YES"'                                        >>           /etc/rc.conf
                     echo 'dahdi_enable="YES"'                                        >>           /etc/rc.conf
                     echo 'wlans_urtwn0="wlan0"'                                      >>           /etc/rc.conf
                     echo 'ifconfig_wlan0="WPA DHCP"'                                 >>           /etc/rc.conf
                     echo 'devfs_system_ruleset="localrules"'                         >>           /etc/rc.conf
                     echo 'vboxnet_enable="YES"'                                      >>           /etc/rc.conf
                     echo 'powerd_enable="yes"'                                       >>           /etc/rc.conf
                     echo 'powerd_flags="-a adp -p 100 -r 90"'                        >>           /etc/rc.conf
                     echo 'nginx_enable="YES"'                                        >>           /etc/rc.conf
                     echo 'php_fpm_enable="YES"'                                      >>           /etc/rc.conf
                     echo 'kld_list="nvidia-drm linux64 nullfs "'                     >>           /etc/rc.conf
                     echo 'allscreens_flags=" MODE_283"'                              >>           /etc/rc.conf
                     echo 'sendmail_enable="NO"'                                      >>           /etc/rc.conf
                     echo 'sendmail_msp_queue_enable="NO"'                            >>           /etc/rc.conf
                     echo 'sendmail_outbound_enable="NO"'                             >>           /etc/rc.conf
                     echo 'sendmail_submit_enable="NO"'                               >>           /etc/rc.conf
                     echo 'dsbmd_enable="YES"'                                        >>           /etc/rc.conf   
#                    echo 'vm_enable="YES"'                                           >>           /etc/rc.conf
#                    echo 'vm_dir="/ntfs-2TB/vm"'                                     >>           /etc/rc.conf
                     echo 'cloned_interfaces="bridge0 tap0"'                          >>           /etc/rc.conf
                     echo 'ifconfig_bridge0="addm re0  addm tap0"'                    >>           /etc/rc.conf
                     echo 'seatd_enable="YES"'                                        >>           /etc/rc.conf  
                     echo 'ifconfig_re0="inet 192.168.8.101 netmask 255.255.255.0"'   >>           /etc/rc.conf
                     echo 'defaultrouter="192.168.8.1"'                               >>           /etc/rc.conf
#                    echo 'xboxdrv_enable="YES"'                                      >>           /etc/rc.conf 
                     echo 'inetd_enable=YES'                                          >>           /etc/rc.conf
                     echo 'webcamd_enable=YES'                                        >>           /etc/rc.conf