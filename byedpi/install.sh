#!/bin/sh

if [  -f "/usr/local/etc/mate.pid/byedpi_install.pid" ]; then
    echo "Файл   byedpi_install.pid существует"
    echo "Пропускаем установку byedpi"
    exit 
fi

echo 'ipdivert_load="YES"' >> /boot/loader.conf
echo 'net.inet.ip.fw.default_to_accept=1' >> /boot/loader.conf
echo 'firewall_enable="YES"' >> /etc/rc.conf 
echo 'firewall_script="/etc/socks.ipfw.rules"' >> /etc/rc.conf
echo '. /etc/zapret.config' >> /etc/rc.firewall.my
echo 'ipfw -q -f flush' >> /etc/rc.firewall.my
echo 'ipfw add 100 divert 989 tcp from any to any 80,443 out not diverted xmit re0' >> /etc/rc.firewall.my
echo 'ipfw add 100 divert 989 tcp from any 80,443 to any tcpflags syn,ack in not diverted recv re0' >> /etc/rc.firewall.my
echo '/usr/local/bin/dvtws --port 989 $CONFIG &' >> /etc/rc.firewall.my


cp  socks.ipfw.rules /etc/


mkdir -p /usr/local/etc/mate.pid
touch /usr/local/etc/mate.pid/byedpi_install.pid
