#!/bin/sh

 file="/etc/src.conf"

if [ -f "$file" ] ; then
    rm "$file"
fi

 echo 'WITHOUT_LLVM_TARGET_ALL=YES'           >>            /etc/src.conf  
                     echo 'WITHOUT_TESTS=YES'                     >>            /etc/src.conf
                     echo 'WITHOUT_TESTS_SUPPORT=YES'             >>            /etc/src.conf
                     echo 'WITHOUT_INET6=YES'                     >>            /etc/src.conf 
                     echo 'WITHOUT_INET6_SUPPORT=YES'             >>            /etc/src.conf
                     echo 'WITHOUT_MAN=YES'                       >>            /etc/src.conf
                     echo 'WITHOUT_MANCOMPRESS=YES'               >>            /etc/src.conf
                     echo 'WITHOUT_MAN_UTILS=YES'                 >>            /etc/src.conf
                     echo 'WITHOUT_FLOPPY=YES'                    >>            /etc/src.conf
                     echo 'WITHOUT_GAMES=YES'                     >>            /etc/src.conf
                     echo 'WITHOUT_SHAREDOCS=YES'                 >>            /etc/src.conf
                     echo 'WITHOUT_REPRODUCIBLE_BUILD=YES'        >>            /etc/src.conf
                     echo 'WITHOUT_SENDMAIL=YES'                  >>            /etc/src.conf
                     echo 'WITHOUT_SOURCELESS=YES'                >>            /etc/src.conf
                     echo 'WITHOUT_SOURCELESS_HOST=YES'           >>            /etc/src.conf
                     echo 'WITHOUT_SOURCELESS_UCODE=YES'          >>            /etc/src.conf
                     echo 'WITHOUT_TALK=YES'                      >>            /etc/src.conf
                     echo 'WITHOUT_TELNET=YES'                    >>            /etc/src.conf
                     echo 'WITHOUT_WIRELESS=YES'           >>            /etc/src.conf
                     echo 'WITHOUT_WIRELESS_SUPPORT=YES'          >>            /etc/src.conf
                     echo 'WITHOUT_TFTP=YES'                      >>            /etc/src.conf
                     echo 'WITHOUT_BLUETOOTH=YES'                    >>            /etc/src.conf