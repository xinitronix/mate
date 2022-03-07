#!/bin/sh


   for path in $(ls All); do


       echo "${path%-*}" > /tmp/1.txt

   done

for path in $(pkg info -q); do


     echo "${path%-*}"   > /tmp/2.txt

   done

    for pkg in    $(diff /tmp/1.txt /tmp/2.txt -u | grep -v '^@@.*@@$' | grep "+" | sed -e 's/^.//' | sed '1d' | sed '1d');do

      cd ~/All
      doas pkg create $pkg

    done
  
