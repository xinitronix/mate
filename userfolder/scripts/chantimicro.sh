#!/bin/sh




if [ -f /tmp/antimicro1.run ]
    then
 rm /tmp/antimicro1.run
killall -INT $(echo -n 'ps aux | grep antimicro ')
/usr/local/bin/screen -m -d antimicro   --tray --profile /home/definitly/antimicro/gta3.car.joystick.amgp
        else

killall -INT $(echo -n 'ps aux | grep antimicro ')
/usr/local/bin/screen -m -d           antimicro  --tray  --profile /home/definitly/antimicro/gta3.joystick.amgp --startSet 1 
 
                echo $! > /tmp/antimicro1.run
 fi