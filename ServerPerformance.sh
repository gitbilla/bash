#!/bin/bash
clear

##variable Decalation Part
ip = $1
#SCRIPT STARTED

echo -e "\n\t\t\t $ip Server Performance\n\n "
echo -e "\tNetwork Status\n"

# SERVER REACHABLE STATUS

COUNT=`ping -c2 localhost | grep received |awk '{print $4}'`

#check whether server is reachable Status
if [ $COUNT -eq 2 ]
then
echo -e "Reachable : Server is up"
else
echo -e "Reachable : Server is down"
fi

#Server Firwall Status

IT=`iptables -L | wc -l`

if [ $IT -eq 8 ]
then
echo -e "Firewall : Disabled \n"
else
echo -e "FIRWALL   : Enabled \n"
fi

echo -e "\tPhysical Status\n "

#Server CPU Usage calculations

CU=`grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage "%"}'`

echo -e "CPU Usage (%) : $CU"

# Server Memory Usage calculations
MU=`free -m | grep Mem | awk '{print $3/$2*100.0}'|cut -d"." -f1`
U=`free -m | grep Mem | awk '{print $3}'`
F=`free -m | grep Mem | awk '{print $4}'`
C=`free -m | grep Mem | awk '{print $7}'`
echo -e "Memory Used (MB) : $U "
R=`df -h | grep -w / | awk '{print $4}'|cut -d % -f1`
echo -e "Memory Free (MB) : $F "
echo -e "Memory Clear (MB) : $C "
echo -e "Disk Usage / (%) : $R "

echo -e "\n\tProcess Status"
echo -e "\nTop 3 Memory Eating Process\n "
ps axo rss,comm,pid | awk '{ proc_list[$2]++; proc_list[$2 ","1] += $1; } END { for (proc in proc_list) { printf("%d\t%s\n", proc_list[proc "," 1],proc); }}' | sort -n | tail -n 5 | sort -rn | awk '{$1/=1024;printf "%.0fMB\t",$1}{print $2}'
