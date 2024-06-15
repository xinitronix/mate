#!/bin/sh
devctl detach pci0:1:0:0
#devctl detach pci0:0:20:0
#devctl set driver pci0:0:20:0 ppt
devctl set driver pci0:1:0:0 ppt