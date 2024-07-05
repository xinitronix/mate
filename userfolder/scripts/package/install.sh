#!/bin/sh

kldload linux
kldload linux64

  for i in $(cat pkg_leaves); do

#pkg install  -r myrepo  -yf  $i 
pkg install  -r FreeBSD  -y $i 

   done
