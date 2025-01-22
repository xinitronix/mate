#!/bin/sh

xterm -e "socat udp-listen:7355 - | dsd-fme -i - -o /dev/dsp ; bash -i"