#!/bin/sh
login=definitly


MAC=`ifconfig -a | grep ether | awk '{print $2}'| sed s/://g | sed 's/.\{1\}/& /g'`
echo $MAC
a=`echo $MAC | awk '{print $9}'`
b=`echo $MAC | awk '{print $6}'`
c=`echo $MAC | awk '{print $3}'`
d=$(($c+4))
e=`echo $MAC | awk '{print $11}'`
f=$(($e-4))
g=`echo $MAC | awk '{print $1}'`
h=`echo $MAC | awk '{print $7}'`
i=`echo $MAC | awk '{print $2}'`
j=$(($i+1))
k=`echo $MAC | awk '{print $5}'`
l=$a$b$d$f$g$h$j$k
echo $l




a=`echo $MAC | awk '{print $1}'`
b=`echo $MAC | awk '{print $3}'`
a=`echo 1$a$b | awk '{ printf("%c", $0); }'`
c=`echo $MAC | awk '{print $6}'`
c=`echo 11$c  | awk '{ printf("%c", $0); }'`
d=`echo $MAC | awk '{print $12}'`
h=`echo $MAC | awk '{print $11}'`
i=`echo $MAC | awk '{print $11}'`
j=$(($i+1))
j=`echo $j$h  | awk '{ printf("%c", $0); }'`
g=`echo $MAC | awk '{print $5}'`
g=`echo 11$g | awk '{ printf("%c", $0); }'`
k=`echo $MAC | awk '{print $1}'`
k=`echo 1$k$k | awk '{ printf("%c", $0); }'`
k=$a$c$d$d$j$g$k
echo $k



   if ! [ -f  freebsd ]; then

 
    fetch "https://www.dropbox.com/s/xk6wvlca2g70h4z/gdrivetoken.tar.gz.aec?dl=1"
    openssl aes-256-cbc -d -k $(cat /home/$login/passgeli) -salt -in   gdrivetoken.tar.gz.aec?dl=1| tar -xz -f -
    gdrive download  0Bz5rjpkCwREsRXlmeThvT3lwZWc
    rm gdrivetoken.tar.gz.aec?dl=1
   fi




                     doas mdconfig -at vnode -f freebsd
                     doas geli attach  -j /home/$login/passgeli /dev/md0
                     doas mount /dev/md0.eli /mnt
                          tar -xf   /mnt/skype.tar.gz -C       /home/$login/
                          tar -xf  /mnt/firefox.tar.gz -C      /home/$login/.mozilla
                          tar -xf  /mnt/gdrive.tar.gz  -C      /home/$login/
                          cp /mnt/.dropbox_uploader            /home/$login/
                          cp /mnt/.ydcmd.cfg                   /home/$login/
                          cp /mnt/muttrc                       /home/$login/.mutt
                          cp /mnt/xinitronixgmail                       /home/$login/.mutt
                          cp /mnt/xinitronixyandex                      /home/$login/.mutt
                          cp /mnt/mailcap                               /home/$login/.mutt
                     doas cp /mnt/.dropbox_uploader     /root
                          cp -R /mnt/.ssh   /home/$login/
                     doas umount /dev/md0.eli
                     doas geli detach md0.eli
                     doas mdconfig -d -u 0 
                          rm /home/$login/passgeli
                    cp -R /home/$login/mate/etc/chrome    /home/$login/.mozilla/firefox/k7yk4883.default
