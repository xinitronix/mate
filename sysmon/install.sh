#!/bin/sh

dir=$(dirname "$(realpath $0)")

cp $dir/sysmon.sh /usr/local/libexec/sysmon.sh
cp $dir/sysmon /usr/local/etc/rc.d/sysmon