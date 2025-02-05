#!/bin/sh

cat  ../accounts/user  | while read line
   do
      echo -e "permit nopass keepenv $login\n"            >>    /usr/local/etc/doas.conf
   done