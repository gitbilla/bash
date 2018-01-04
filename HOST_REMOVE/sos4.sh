#!/bin/sh
# Written by : Abraham Augustine
# Purpose :  To Add New Hosts to the epwstab
# Date : Jan 2018
echo "Backing the file with todays date"
NOW=$(date '+%Y%m%d%H%M')
echo "FILE SAVED AS :  /home/ab093568L/SORTING/sort.txt.$NOW "
cp  /home/ab093568L/SORTING/sort.txt /home/ab093568L/SORTING/sort.txt.$NOW
hostn=$(cat /home/ab093568L/SORTING/sort.txt > /dev/null)
echo -e "\e[31;43m*****Enter new hostname:\e[0m "
read newhost
if grep -qF "$newhost" /home/ab093568L/SORTING/sort.txt;then
        echo -e "\e[31;43m $newhost Found\e[0m"
        echo "exiting the script"
else
        echo "$newhost not Found"
        echo -e "\e[31;43m*****Added the hostname $newhost:\e[0m "
        sed -i "$ a $newhost" /home/ab093568L/SORTING/sort.txt
	echo 
fi
echo -e "\e[1;32mDone.\e[0m"
