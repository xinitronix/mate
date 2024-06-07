#!/bin/sh


while true; 
do  

date=$( date +"%F %R" )
tempcity=$(curl -s "https://api.openweathermap.org/data/2.5/weather?id=524894&appid=9cabf88b4c9c983d726a820860e3a5b6&units=metric" | jq -r '.main.temp')℃
freemem=$(free | grep 'mem_free:' | awk '{print $5}' | sed 's/.$//') 
tcpu=tCPU:$(sysctl -n dev.cpu.0.temperature | cut -c 1-2)℃
topprocess=$(top -bn 1 | awk '{print $12}' | awk '(NR == 10)')
loadcpu=cpu:$(top -bn 1 | grep "CPU:" | awk '{print $2 }' )
loadtop=$(top -bn 1 | awk '{print $11}' | awk '(NR == 10)')
skb=$(xset -q | awk 'BEGIN { a[1]="ru"; a[0]="en"; } /LED/ { print a[$10 && 32]; }')
compat=$(sysctl -a | grep compat.linux.emul_path | awk '{print $2 }' | cut -c 9-)
freessd=SSD:$(df -H / |  awk '{print $4 }'  | awk '(NR == 2)')

      xsetroot -name "$compat $skb $tempcity $freessd $freemem $tcpu $loadcpu $topprocess $loadtop $date"

      sleep 5
done