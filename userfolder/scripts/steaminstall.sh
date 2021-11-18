#!/bin/sh

steam-install --allow-stealing-my-passwords,-browser-history-and-ssh-keys && steam && /usr/local/wine-proton/bin/pkg32.sh install -y -r myrepo_i386 wine-devel  wine-proton mesa-dri && cd /usr/local/bin && \
 doas ln -s /usr/local/wine-proton/bin/wine proton && cd 
