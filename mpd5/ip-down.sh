#!/bin/sh
#
# $FreeBSD usr/local/etc/mpd5/ra2hp/iface-down.sh,v0.1 2011/10/16 $
#
# mpd5 calls this script with following parameters:
#
#       interface proto local-ip remote-ip authname peer-address
#
# Martin Ilavsky
#

MPD5_CONFIG_DIR="/usr/local/etc/mpd5"

# get the old GW
OLD_DEFAULT=`cat "${MPD5_CONFIG_DIR}"/.session/cur_default_gw`

if [ x = x"${OLD_DEFAULT}" ]; then exit 1; fi                           # EXIT: failed to get old default gw

# remove new default gw
/sbin/route delete default

# put the old one back
/sbin/route add default ${OLD_DEFAULT}

# remove the route to TUNNEL
/sbin/route delete -host $6

# restore DNS settings
if [ -f "${MPD5_CONFIG_DIR}"/.session/cur_resolv_conf ]; then
        /bin/mv  "${MPD5_CONFIG_DIR}"/.session/cur_resolv_conf /etc/resolv.conf
fi

# cleanup
/bin/rm -f "${MPD5_CONFIG_DIR}"/.session/cur_default_gw
/bin/rmdir "${MPD5_CONFIG_DIR}"/.session