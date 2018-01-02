#!/bin/sh
# Script to mount the  filesystem in LVM
# Author : Prashant Pilankar
# Read the BigAdmin article that describes the usage of this script:
# http://www.sun.com/bigadmin/content/submitted/lvm_admin.jsp
echo "enter the vg and lv name and mount point for mounting the FS "
echo "please ensure mount point directory exists prior to mounting the FS "
read a b c
mount /dev/$a/$b  /app/$c
echo "following confirms the filesystem is mounted"
mount | grep $c
