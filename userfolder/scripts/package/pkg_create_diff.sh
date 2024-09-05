#!/bin/sh
rm /tmp/1.txt
rm /tmp/2.txt
rm /tmp/3.txt
   


   for path in $(ls /home/definitly/2TB/All ); do


       echo "${path%-*}" >> /tmp/1.txt

   done

for path in $(pkg info -q); do


     echo "${path%-*}"   >> /tmp/3.txt

   done

   sort /tmp/3.txt >> /tmp/2.txt


    for pkg in    $(diff /tmp/1.txt /tmp/2.txt -u | grep -v '^@@.*@@$' | grep "+" | sed -e 's/^.//' | sed '1d' | sed '1d');do

      cd  /home/definitly/2TB/All
      doas pkg create $pkg

    done
  

