#!/bin/sh
cp switch_i915.sh /usr/local/bin/switch_i915
mkdir -p /usr/local/etc/i915
cp  20-intel.conf  /usr/local/etc/i915
cp xorg.conf      /usr/local/etc/i915
