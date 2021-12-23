#!/bin/sh


   for pkg in $(pkg search -r myrepo -g \* | sed -r 's/([^ ]*).*/\1/'); do

     echo $pkg
     doas pkg  install  -r myrepo -y $pkg

   done
