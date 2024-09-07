#!/bin/sh

cp  dvtws /usr/local/bin 

echo 'ipdivert_load="YES"' >> /boot/loader.conf
echo 'net.inet.ip.fw.default_to_accept=1' >> /boot/loader.conf
echo 'firewall_enable="YES"' >> /etc/rc.conf 
echo 'firewall_script="/etc/rc.firewall.my"' >> /etc/rc.conf 
echo 'ipfw -q -f flush' >> /etc/rc.firewall.my
echo 'ipfw add 100 divert 989 tcp from any to any 80,443 out not diverted xmit re0' >> /etc/rc.firewall.my
echo 'ipfw add 100 divert 989 tcp from any 80,443 to any tcpflags syn,ack in not diverted recv re0' >> /etc/rc.firewall.my
echo '/usr/local/bin/dvtws --port 989 --dpi-desync=fake,split2 --dpi-desync-ttl=3 --dpi-desync-fooling=datanoack --debug 1 &' >> /etc/rc.firewall.my
