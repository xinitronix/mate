#!/bin/sh

cat  $1  | while read line
   do
      
 echo " echo '"$line"' >> $2"  >>  $2.sh
   done