#!/bin/sh
#
#       interface proto local-ip remote-ip authname [ dns1 server-ip ] [ dns2 server-ip ] peer-address
#
# Martin Ilavsky
#

MPD5_CONFIG_DIR="/usr/local/etc/mpd5"

# get the current INET (IPv4) gateway
CUR_DEFAULT=`/usr/bin/netstat -f inet -nr | grep ^default  | awk '{print $2}'`

if [ x = x"${CUR_DEFAULT}" ]; then exit 1; fi                           # EXIT: failed to obtain default gw

# save default; exit if not possible
/bin/mkdir "${MPD5_CONFIG_DIR}"/.session                          # omitting -p on purpose
echo $CUR_DEFAULT > ${MPD5_CONFIG_DIR}/.session/cur_default_gw

if [ $? -ne 0 ]; then exit 1; fi                                        # EXIT:  failed to save default gw

# keep a route to the VPN server
/sbin/route add -host $8 $CUR_DEFAULT

# delete default gw
/sbin/route delete default

# add new default fw
/sbin/route add default $4

# save current /etc/resolv.conf
/bin/cp -p /etc/resolv.conf "${MPD5_CONFIG_DIR}"/.session/cur_resolv_conf

# construct a new one
printf "nameserver\t192.168.77.1\n" > /etc/resolv.conf
/bin/chmod 644 /etc/resolv.conf
/usr/sbin/chown root:wheel /etc/resolv.conf