#!/bin/sh

sshpass -p "639639" scp pi@192.168.8.45:/etc/tor/torrc /tmp/torrc
leafpad  /tmp/torrc
sshpass -p "639639" scp /tmp/torrc pi@192.168.8.45:/etc/tor/torrc