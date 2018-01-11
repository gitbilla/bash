#!/bin/bash
echo "Backing the file with todays date"
NOW=$(date '+%Y%m%d%H%M')
echo  "***FILE SAVED AS :  /home/ab093568L/SORTING/sort.txt.$NOW "
echo  "*****Enter The Hostname_to_remove**** "
hostn=$(cat /home/ab093568L/SORTING/sort.txt > /dev/null)
read newhost
echo  "***Removing the Host Name:***"
if grep -qF "$newhost" /home/ab093568L/SORTING/sort.txt;then
        echo  "Host found $newhost"
	echo -e "/$newhost\ndd\033:x\n" | vi sort.txt
	echo "IGNORE : Input is not from a terminal"
echo "***Removed $newhost***"
else
          echo "$newhost not Found"
          echo -e "\e[31;43m*****Hostname $newhost NOT FOUND*****\e[0m "
          echo "**** Exiting the Script*********"
          echo
fi
echo -e "\e[1;32mDone.\e[0m"
