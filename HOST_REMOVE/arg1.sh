#!/bin/bash
# Author : 
# Script for Adding and Removing hosts in EPWSTAB
# Declare variable choice and assign value 3
choice=3
# Print to stdout
 echo "1. To ADD NEW HOSTS NAME"
 echo "2. TO REMOVE HOST NAME"
 
 echo -n "Please select your choice [1,2]? "
# Loop while the variable choice is equal 3
# bash while loop
while [ $choice -eq 3 ]; do

# read user input
read choice
# bash nested if/else
if [ $choice -eq 1 ] ; then

        /home/ab093568L/SORTING/sos4.sh
else

        if [ $choice -eq 2 ] ; then
		/home/ab093568L/SORTING/remove1.sh
fi
fi
done
