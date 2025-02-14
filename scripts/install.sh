#!/bin/sh

dir=$(dirname "$(realpath $0)")

kldload linux
kldload linux64

  for i in $(cat $dir/pkg_leaves); do

pkg install  -r myrepo  -y  $i 
#pkg install  -r FreeBSD  -y $i 

   done
