#!/bin/sh
# rc.conf loader.conf make.conf pkg.conf profile csh.login fstab sysctl.conf

dir=$(dirname "$(realpath $0)")

if test "$(id -u)" -ne 0; then
	printf "%s must be run as root\n" "${0##*/}"
	exit 1
fi

sh $dir/rc.conf.sh
sh $dir/make.conf.sh
sh $dir/src.conf.sh
sh $dir/sysctl.conf.sh
sh $dir/devfs.rules.sh
sh $dir/loader.conf.sh
sh $dir/sudoers.sh
sh $dir/fstab.sh

#/etc/profile
                     echo 'LANG=ru_RU.UTF-8; export LANG'        >>             /etc/profile
                     echo 'MM_CHARSET=UTF-8; export MM_CHARSET'  >>             /etc/profile
 
#/etc/csh.login
                     echo 'setenv LANG ru_RU.UTF-8' >>                           /etc/csh.login
                     echo 'setenv MM_CHARSET UTF-8' >>                           /etc/csh.login
#root .cshrc
                     echo  'set prompt="%{^[[40;31;1m%} %{^[[40;31;1m%} %N@%m:%~ %# "' >> /root/.cshrc

#/etc/devfs.conf
                    echo 'link /tmp shm'                             >>             /etc/devfs.conf
                    echo 'perm    da0     0666'                      >>             /etc/devfs.conf
                    echo 'own     da0     root:operator'             >>             /etc/devfs.conf
#/boot/device.hints  
                   echo 'hint.pcm.3.vol="100"'         >>           /boot/device.hints

#/etc/resolvconf.conf   
                   echo 'resolvconf=NO'       >>    /etc/resolvconf.conf

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

#wpa_supplicant.conf

#                     echo 'network={'            >>   /etc/wpa_supplicant.conf
#                     echo 'ssid="1ghfghf"'       >>   /etc/wpa_supplicant.conf
#                     echo 'psk=3fb85bd2dec160ecba1cdf1004bec112938775d49f2b2666491410f76796377d'  >>   /etc/wpa_supplicant.conf
#                     echo '}' >> /etc/wpa_supplicant.conf
#                     mkdir -p  /usr/local/etc/pkg/repos

mkdir -p /usr/local/etc/mate.pid
touch /usr/local/etc/mate.pid/config.sh.pid