#!/bin/sh
 barriers -a 192.168.8.100  --config win   --disable-crypto --disable-client-cert-checking

./detach.sh &
./win10.sh