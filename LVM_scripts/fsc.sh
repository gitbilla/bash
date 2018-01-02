#!/bin/bash
# Script to create the  filesystem in LVM
# Author : Prashant Pilankar
# Read the BigAdmin article that describes the usage of this script:
# http://www.sun.com/bigadmin/content/submitted/lvm_admin.jsp
echo "enter the filesystem type following by the vg name and lv name "
read a b c
if [ $a = ext3 ]; then
 mkfs -t ext3 /dev/$b/$c ; ls -lt /dev/$b/$c
else
 mkfs -t ext2 /dev/$b/$c ; /dev/$b/$c
fi
