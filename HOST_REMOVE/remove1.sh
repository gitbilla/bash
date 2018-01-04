#!/bin/bash
echo "Backing the file with todays date"
NOW=$(date '+%Y%m%d%H%M')
echo  "***FILE SAVED AS :  /home/ab093568L/SORTING/sort.txt.$NOW "
echo  "*****Enter THE Hostname**** "
hostn=$(cat /home/ab093568L/SORTING/sort.txt > /dev/null)
read newhost
echo  "***Removing the Host Name:***"
if grep -qF "$newhost" /home/ab093568L/SORTING/sort.txt;then
        echo  "Host found $newhost"
        sed -e s/$newhost//g -i * /home/ab093568L/SORTING/sort.txt && sed -i '/^$/d' /home/ab093568L/SORTING/sort.txt
echo "***Removed $newhost***"
fi
exit
