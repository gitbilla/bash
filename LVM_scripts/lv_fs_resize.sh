#!/bin/sh
# Script to resize the  filesystem in LVM
# Author : Prashant Pilankar
# Read the BigAdmin article that describes the usage of this script:
# http://www.sun.com/bigadmin/content/submitted/lvm_admin.jsp
echo "Please ensure the associated filesystem is unmounted before resize "
echo "enter the new size for lv followed by the vg and lv name and new size for filesystem for the resize operation "
echo "please be informed that during the resize operation filesystem consistency will be checked"
read a b c d
lvresize -L $a /dev/$b/$c ; e2fsck -f /dev/$b/$c ; resize2fs /dev/$b/$c $d
echo "following confirms the logical volume is resized"
lvs
