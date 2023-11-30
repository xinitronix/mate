#!/bin/sh

kldload linux
kldload linux64

  for i in $(cat pkg_leaves); do


    pkg install  -r FreeBSD  -y $i 


   done
