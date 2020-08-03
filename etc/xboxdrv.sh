#!/bin/sh
doas xboxdrv -s &
doas chmod 0666 /dev/input/event10