#!/bin/sh

dir=$(dirname "$(realpath $0)")

cp -R $dir/power_py /usr/local/lib/python3.11/site-packages
ln -s /usr/local/lib/python3.11/site-packages/power_py/power.py /usr/local/bin/powerpy
