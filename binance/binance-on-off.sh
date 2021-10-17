#!/bin/sh
proc=conkybinance

  
          
   
         
          
          if ! [ -z $(pgrep $proc) ]
                then
                   killall -9 conkybinance
                else
                    conkybinance  -d -c ~/.binancerc  &
        fi
           