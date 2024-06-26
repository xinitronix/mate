doas kill -s TERM $(pgrep -f "bhyve: win10") 
doas bhyvectl --vm=win10  --destroy
doas devctl detach  -f pci0:0:20:0
doas devctl set driver   pci0:0:20:0 xhci
doas devctl attach pci0:0:20:0
doas devctl detach -f  pci0:0:2:0
doas devctl set driver pci0:0:2:0 vgapci
doas devctl attach  pci0:0:2:0

