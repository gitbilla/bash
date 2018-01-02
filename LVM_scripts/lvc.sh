#!/bin/sh
# Script to create the  logical volume in LVM
# Author : Prashant Pilankar
# Read the BigAdmin article that describes the usage of this script:
# http://www.sun.com/bigadmin/content/submitted/lvm_admin.jsp
echo "enter the size followed by the LV and VG name to create the  logical volume "
read a b c
lvcreate -L $a -n $b /dev/$c
echo "following confirms the logical volume is created"
lvs
