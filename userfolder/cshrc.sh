#!/bin/sh
rm .cshrc
 echo '# $FreeBSD: head/share/skel/dot.cshrc 278616 2015-02-12 05:35:00Z cperciva $' >> .cshrc
 echo '#' >> .cshrc
 echo '# .cshrc - csh resource script, read at beginning of execution by each shell' >> .cshrc
 echo '#' >> .cshrc
 echo '# see also csh(1), environ(7).' >> .cshrc
 echo '# more examples available at /usr/share/examples/csh/' >> .cshrc
 echo '#' >> .cshrc
 echo '' >> .cshrc
 echo 'alias h history 25' >> .cshrc
 echo 'alias j jobs -l' >> .cshrc
 echo 'alias la ls -aF' >> .cshrc
 echo 'alias lf ls -FA' >> .cshrc
 echo 'alias ll ls -lAF' >> .cshrc
 echo '' >> .cshrc
 echo '# These are normally set through /etc/login.conf. You may override them here' >> .cshrc
 echo '# if wanted.' >> .cshrc
 echo 'set path = (/sbin /bin /usr/sbin /usr/bin /usr/local/sbin /usr/local/bin $HOME/bin $HOME/.local/bin /opt/trinity/bin)' >> .cshrc
 echo '# setenv BLOCKSIZE K' >> .cshrc
 echo '# A righteous umask' >> .cshrc
 echo '# umask 22' >> .cshrc
 echo '' >> .cshrc
 echo 'setenv EDITOR vi' >> .cshrc
 echo 'setenv PAGER more' >> .cshrc
 echo '' >> .cshrc
 echo 'if ($?prompt) then' >> .cshrc
 echo '# An interactive shell -- set some stuff up' >> .cshrc
 echo 'set prompt = "%N@%m:%~ %# "' >> .cshrc
 echo 'set promptchars = "%#"' >> .cshrc
 echo '' >> .cshrc
 echo 'set filec' >> .cshrc
 echo 'set history = 1000' >> .cshrc
 echo 'set savehist = (1000 merge)' >> .cshrc
 echo 'set autolist = ambiguous' >> .cshrc
 echo '# Use history to aid expansion' >> .cshrc
 echo 'set autoexpand' >> .cshrc
 echo 'set autorehash' >> .cshrc
 echo 'set mail = (/var/mail/$USER)' >> .cshrc
 echo 'if ( $?tcsh ) then' >> .cshrc
 echo 'bindkey "^W" backward-delete-word' >> .cshrc
 echo 'bindkey -k up history-search-backward' >> .cshrc
 echo 'bindkey -k down history-search-forward' >> .cshrc
 echo 'endif' >> .cshrc
 echo '' >> .cshrc
 echo 'endif' >> .cshrc
 echo 'set prompt="%{^[[0;32;1m%}[%T] %{^[[0;32;1m%} %/ %"' >> .cshrc
 echo 'alias kn killall -9 npviewer.bin' >> .cshrc
 echo 'alias ks killall -9 sp-sc-auth' >> .cshrc
 echo 'alias kw killall -9 wine' >> .cshrc
 echo 'alias sm mpv http://localhost:8908/tv.asf' >> .cshrc
 echo 'alias kf killall -9 firefox' >> .cshrc
 echo 'alias cdd cd ~/downloads' >> .cshrc
 echo 'alias cds cd ~/scripts' >> .cshrc
 echo 'alias rtmp ~/scripts/rtmp.sh' >> .cshrc
 echo 'alias krtmp killall -9 rtmpsrv' >> .cshrc
 echo 'alias m3u8 ~/scripts/tcpdump_m3u8.sh' >> .cshrc
 echo 'alias extract ~/.scripts/extractd' >> .cshrc
 echo 'setenv TERM xterm-256color' >> .cshrc
 echo 'setenv SDL_JOYSTICK_DEVICE /dev/input/event10' >> .cshrc
 echo 'setenv DOCKER_HOST tcp://192.168.8.106:2375' >> .cshrc
 echo 'setenv WEBKIT_DISABLE_DMABUF_RENDERER 1 #fix run explorer ie xfce-wintc' >> .cshrc
 echo '' >> .cshrc
 echo '' >> .cshrc
 echo 'setenv WEBKIT_DISABLE_DMABUF_RENDERER 1' >> .cshrc
