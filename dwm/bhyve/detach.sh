#!/bin/sh
#doas devctl detach pci0:1:0:0
doas devctl detach pci0:0:2:0
doas devctl set driver pci0:0:2:0 ppt
#doas devctl set driver pci0:1:0:0 ppt
#doas devctl detach pci0:0:20:0
#doas devctl set driver pci0:0:20:0 ppt