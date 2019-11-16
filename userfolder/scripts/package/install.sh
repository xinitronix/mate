#!/bin/sh



  for i in $(cat pkg_leaves_final); do


 doas   pkg install  -y $i 


   done