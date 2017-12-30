#!/bin/bash

#script to find out how much time took for previous reboot

clear

echo -e "\n\tScript to find How much time taken Linux Server for last Reboot\n"

#BT = Server Boot Time After Reboot
BT=`last -F reboot | head -n 1 | awk '{print $5,$6,$7,$8,$9}'`

#RT = Server Rebooted time
RT=`last -F reboot | head -n 2 | awk '{print $11,$12,$13,$14,$15}'| tail -1`

echo -e  "Server Boot Time after Reboot = $BT";
echo -e  "Server Rebooted Time          = $RT";

#Note below output is should print the value between different date also Example JAN 10 23:59:21 server rebooted again server i#s came up at JAN 11 00:04:54 it should calculate the difference

#echo -e "\nAmount of Time Reboot (seconds) = $(( $(date -ud "$BT" +'%s') – $(date -ud "$RT" +'%s') ))Sec" ;

#echo $(( $(date -ud "$BT" +'%s') – $(date -ud "$RT" +'%s') )) > /root/out.txt

#seconds=`cat /root/out.txt`

#echo "Amount of Time Reboot (MM:SS)    = $((seconds/60))Min $((seconds%60))Sec"

#echo "Amount of Time Reboot (HH:MM:SS) = $(date -d @$(( $(date -d "$BT" +%s) – $(date -d "$RT" +%s) )) -u +'%H:%M:%S')"
