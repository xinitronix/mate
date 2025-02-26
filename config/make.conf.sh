#!/bin/sh
file="/etc/make.conf"

if [ -f "$file" ] ; then
    rm "$file"
fi
                    
                    echo 'BATCH=y'                              >>            /etc/make.conf
                    echo 'OPTIMIZED_CFLAGS=YES'                 >>            /etc/make.conf
                    echo 'BUILD_OPTIMIZED=YES'                  >>            /etc/make.conf 
                    echo 'WITH_CPUFLAGS=YES'                    >>            /etc/make.conf
                    echo 'WITH_OPTIMIZED_CFLAGS=YES'            >>            /etc/make.conf 
                    echo 'WITHOUT_DEBUG=YES'                    >>            /etc/make.conf