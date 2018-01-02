#!/bin/sh
# Script to create the  volume group in LVM
# Author : Prashant Pilankar
# Read the BigAdmin article that describes the usage of this script:
# http://www.sun.com/bigadmin/content/submitted/lvm_admin.jsp
echo "enter the volume group name followed by the devices to create the  volume group "
read a b c d e
vgcreate $a /dev/$b /dev/$c /dev/$d /dev/$e
echo "following confirms the volume group is created"
vgs
