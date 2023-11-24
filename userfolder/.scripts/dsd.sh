#!/bin/sh



killall -9 dsd
xterm -geometry 110x20+600+650 -e  "padsp -- dsd -i /dev/dsp -o /dev/dsp"