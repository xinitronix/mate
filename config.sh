#!/bin/sh
# rc.conf loader.conf make.conf pkg.conf profile csh.login fstab sysctl.conf

login=$(cat  accounts/user | awk '{print $1}' |  head -n1)



if [  -f "/usr/local/etc/mate.pid/config.sh.pid" ]; then
    echo "Файл $FILE  существует"
    exit 
fi


#/etc/rc.conf

 
                     
 #                   echo 'hald_enable="yes"'            >>                   /etc/rc.conf
                     echo 'dbus_enable="yes"'            >>                   /etc/rc.conf
 #                   echo 'apache22_enable="YES"'        >>                   /etc/rc.conf
                     echo 'linux_enable="YES"'           >>                   /etc/rc.conf
                     
                     echo 'dahdi_enable="YES"'           >>                   /etc/rc.conf
                     echo 'wlans_urtwn0="wlan0"'         >>                   /etc/rc.conf
                     echo 'ifconfig_wlan0="WPA DHCP"'    >>                   /etc/rc.conf
#                    echo 'font8x16=cp866b-8x16'         >>                   /etc/rc.conf
#                    echo 'font8x14=cp866-8x14'          >>                   /etc/rc.conf
#                    echo 'font8x8=cp866-8x8'            >>                   /etc/rc.conf
#                    echo 'asterisk_enable="YES"'        >>                   /etc/rc.conf
                     echo 'devfs_system_ruleset="localrules"'          >>                   /etc/rc.conf
#                    echo 'vboxnet_enable="YES"'         >>                   /etc/rc.conf
                     echo 'powerd_enable="yes"'          >>                   /etc/rc.conf
                     echo 'powerd_flags="-a adp -p 100 -r 90"'   >>           /etc/rc.conf
                     echo 'nginx_enable="YES"'           >>                   /etc/rc.conf
                     echo 'php_fpm_enable="YES"'         >>                   /etc/rc.conf
                     echo 'kld_list="nvidia-drm linux64 nullfs "'         >>                   /etc/rc.conf
 #                   echo 'KLD_LIST="linux linsysfs linprocfs"'  >>           /etc/rc.conf
                     echo 'allscreens_flags=" MODE_283"'         >>           /etc/rc.conf
                     echo 'sendmail_enable="NO"'               >>           /etc/rc.conf
                     echo 'sendmail_msp_queue_enable="NO"'       >>           /etc/rc.conf
                     echo 'sendmail_outbound_enable="NO"'        >>           /etc/rc.conf
                     echo 'sendmail_submit_enable="NO"'          >>           /etc/rc.conf
                     echo 'dsbmd_enable="YES"'                   >>           /etc/rc.conf   
#                    echo 'vm_enable="YES"' >> /etc/rc.conf
#                    echo 'vm_dir="/ntfs-2TB/vm"'  >> /etc/rc.conf
                     echo 'cloned_interfaces="bridge0 tap0"' >> /etc/rc.conf
                     echo 'ifconfig_bridge0="addm re0  addm tap0"'  >> /etc/rc.conf
                     echo 'seatd_enable="YES"'                   >>           /etc/rc.conf  
                     echo 'ifconfig_re0="inet 192.168.8.101 netmask 255.255.255.0"' >> /etc/rc.conf
                     echo 'defaultrouter="192.168.8.1"' >> /etc/rc.conf

#/boot/defaults/loader.conf 
   #                  echo  'nvidia_load="YES" '           >>                   /boot/defaults/loader.conf
                     echo  'vboxdrv_load="YES"'           >>                   /boot/defaults/loader.conf
                     echo  'coretemp_load="YES" '         >>                   /boot/defaults/loader.conf
    #                 echo  'nvidia-modeset_load="YES" '         >>             /boot/defaults/loader.conf
                     echo  'cpufreq_load="yes"'           >>                   /boot/defaults/loader.conf
                     echo  'vfs.zfs.prefetch_disable="0"' >>                   /boot/defaults/loader.conf
                     echo  'machdep.disable_mtrrs=1'      >>                   /boot/defaults/loader.conf
                     echo  'kern.vty=vt'                  >>                   /boot/defaults/loader.conf
                     echo  'hw.nvidiadrm.modeset=1'       >>                   /boot/defaults/loader.conf
#/boot/loader.conf

                    echo  'if_urtwn_load="YES"'           >>                   /boot/loader.conf
                    echo  'legal.realtek.license_ack=1'   >>                   /boot/loader.conf
  #               echo  'nvidia-modeset_load="YES"'   >>                   /boot/loader.conf
                    echo  'fusefs_load="YES"'   >>                   /boot/loader.conf
 #                   echo  'vmm_load="YES"'   >>                   /boot/loader.conf



#/etc/make.conf
#                      echo 'WITHOUT_NOUVEAU=YES'           >>                   /etc/make.conf
                      echo 'BATCH=y'                       >>                   /etc/make.conf
#                     echo 'WITH_PKGNG=yes'                >>                   /etc/make.conf
#                     echo 'OVERRIDE_LINUX_BASE_PORT=c6'          >>            /etc/make.conf 
#                     echo 'OVERRIDE_LINUX_NONBASE_PORTS=c6'      >>            /etc/make.conf

#/etc/src.conf 
                     echo 'WITHOUT_LLVM_TARGET_ALL=YES'           >>                    /etc/src.conf  
                     echo 'WITHOUT_TESTS=YES'           >>                    /etc/src.conf  


                     
#/etc/profile
                     echo 'LANG=ru_RU.UTF-8; export LANG'        >>             /etc/profile
                     echo 'MM_CHARSET=UTF-8; export MM_CHARSET'  >>             /etc/profile
 
#/etc/csh.login
                     echo 'setenv LANG ru_RU.UTF-8' >>                           /etc/csh.login
                     echo 'setenv MM_CHARSET UTF-8' >>                           /etc/csh.login

#/etc/fstab
                     echo 'linproc /compat/linux/proc linprocfs rw  0 0' >>       /etc/fstab
 #                   echo 'tmpfs        /tmp            tmpfs        rw 0' >>    /etc/fstab
                     echo 'devfs      /compat/linux/dev      devfs      rw,late    0  0' >>    /etc/fstab
                     echo 'fdescfs    /compat/linux/dev/fd   fdescfs    rw,late,linrdlnk  0  0'  >>    /etc/fstab
                     echo 'linsysfs  /compat/linux/sys linsysfs rw  0 0' >> /etc/fstab
                     echo 'fdesc   /dev/fd            fdescfs   rw  0 0' >>       /etc/fstab
                     echo 'proc    /proc               procfs   rw  0 0' >>       /etc/fstab
                     echo '/dev/da0 /mnt             ufs      rw,noauto 0 0' >>   /etc/fstab
                     echo 'tmpfs    /compat/linux/dev/shm  tmpfs rw,mode=1777 0 0' >> /etc/fstab
 #                   echo '/dev/ada0p2 /ntfs-2TB   ntfs   mountprog=/usr/local/bin/ntfs-3g,late,rw,uid=1002    0   0' >> /etc/fstab

#/etc/sysctl.conf
                     echo "compat.linux.osrelease=3.6.32" >>                      /etc/sysctl.conf
                     echo "vfs.usermount=1" >> /etc/sysctl.conf
                     echo "security.bsd.unprivileged_chroot=1"    >> /etc/sysctl.conf

#/usr/local/etc/sudoers
                    echo -e "root ALL=(ALL:ALL) ALL"            >>    /usr/local/etc/sudoers
                    echo -e "%wheel ALL=(ALL:ALL) ALL"            >>    /usr/local/etc/sudoers
                    echo -e "%wheel ALL=(ALL:ALL) NOPASSWD: ALL"                  >>    /usr/local/etc/sudoers

#root .cshrc

                    echo  'set prompt="%{^[[40;31;1m%} %{^[[40;31;1m%} %N@%m:%~ %# "' >> /root/.cshrc

#/etc/devfs.conf
            
                    echo 'link /tmp shm'                             >>             /etc/devfs.conf
                    echo 'perm    da0     0666'                      >>             /etc/devfs.conf
                    echo 'own     da0     root:operator'             >>             /etc/devfs.conf
#/etc/devfs.rules

                    echo '[localrules=10]'                            >>   /etc/devfs.rules
                    echo 'add path 'usb/*' mode 0666 group operator'  >>   /etc/devfs.rules
                    echo 'add path 'da*'   mode 0666 group operator'  >>   /etc/devfs.rules

#/etc/sysctl.conf   
                   echo 'kern.coredump=0'                 >>           /etc/sysctl.conf 
                   echo 'kern.ipc.shm_allow_removed=1'    >>           /etc/sysctl.conf 

#/boot/device.hints  
                   echo 'hint.pcm.3.vol="100"'         >>           /boot/device.hints

#/etc/resolvconf.conf   
                   echo 'resolvconf=NO'       >>    /etc/resolvconf.conf

#/etc/src.conf
                  echo 'WITHOUT_REPRODUCIBLE_BUILD=YES' >> /etc/src.conf

#/etc/resolv.conf   
                 echo 'nameserver 8.8.8.8'  >     /etc/resolv.conf

#wine-proton
                   ln -s /usr/local/wine-proton/bin/wine  /usr/local/bin/proton
                   ln -s /usr/local/wine-proton/bin/winecfg  /usr/local/bin/protoncfg

                   
 
#link ssl certificate verify 
                   ln -sf /usr/local/share/certs/ca-root-nss.crt /etc/ssl/cert.pem
  
cp /usr/share/zoneinfo/Europe/Moscow /etc/localtime 


#/etc/libmap32.conf
                   echo '/usr/local/lib  /usr/local/lib32' >> /etc/libmap32.conf


#6-u6hbv-rys4v-7ci39-4x89x-s4y2m
# en pass k..........3 pass.png

## fftor settings for ff user

                      echo 'setenv DISPLAY :0.0'       >> /home/ff/.cshrc

##rtorrent settings for rtorrent user


#                      echo 'setenv DISPLAY :0'       >> /home/rtorrent/.cshrc

##vpntor settings for vpn user


#                      echo 'setenv DISPLAY :0'       >> /home/vpn/.cshrc


#wpa_supplicant.conf


                     echo 'network={'            >>   /etc/wpa_supplicant.conf
                     echo 'ssid="1ghfghf"'       >>   /etc/wpa_supplicant.conf
                     echo 'psk=3fb85bd2dec160ecba1cdf1004bec112938775d49f2b2666491410f76796377d'  >>   /etc/wpa_supplicant.conf
                     echo '}' >> /etc/wpa_supplicant.conf


                     mkdir -p  /usr/local/etc/pkg/repos



mkdir -p /usr/local/etc/mate.pid
touch /usr/local/etc/mate.pid/config.sh.pid


