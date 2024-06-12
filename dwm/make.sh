#!/bin/sh
cd /usr/ports/*/dwm
doas make clean
doas make DWM_CONF='/home/dwm/config.h' reinstall
