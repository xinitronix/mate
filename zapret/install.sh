#!/bin/sh

if [  -f "/usr/local/etc/mate.pid/zapret_install.pid" ]; then
    echo "Файл   zapret_install.pid существует"
    echo "Пропускаем установку zapret"
    exit 
fi

echo 'ipdivert_load="YES"' >> /boot/loader.conf
echo 'net.inet.ip.fw.default_to_accept=1' >> /boot/loader.conf
echo 'firewall_enable="YES"' >> /etc/rc.conf 
echo 'firewall_script="/etc/rc.firewall.my"' >> /etc/rc.conf
echo '. /etc/zapret.config' >> /etc/rc.firewall.my
echo 'ipfw -q -f flush' >> /etc/rc.firewall.my
echo 'ipfw add 100 divert 989 tcp from any to any 80,443 out not diverted xmit re0' >> /etc/rc.firewall.my
echo 'ipfw add 100 divert 989 tcp from any 80,443 to any tcpflags syn,ack in not diverted recv re0' >> /etc/rc.firewall.my
echo '/usr/local/bin/dvtws --port 989 $CONFIG &' >> /etc/rc.firewall.my

uname=$(uname -r | grep 15)

if [ -z "$uname" ]
then
     echo "\$var Пустая"
  cp  zapret.config.FreeBSD14 /etc/zapret.config
else
     cp  zapret.config.FreeBSD15 /etc/zapret.config
fi

mkdir -p /usr/local/etc/mate.pid
touch /usr/local/etc/mate.pid/zapret_install.pid
