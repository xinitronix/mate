#!/bin/sh

kldload linux
kldload linux64

  for i in $(cat pkg_leaves_final); do


    pkg install  -y $i 


   done
