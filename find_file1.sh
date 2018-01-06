#!/bin/bash
#[root@rhel-vm SHELL]# [ -d /var/log ] && echo "Directory exist" || echo "Directory does not exist"
#Directory exist
#[root@rhel-vm SHELL]# [ -f /etc/passwd ] && echo "File exists" || echo "File does not exits"
#File exists
# ***********USE this script by passing aruguments*************
#./filefind1 file_name dir_name

FILE="$1"
 
if [ -f "$FILE" ];
then
   echo "File $FILE exist."
else
   echo "File $FILE does not exist" >&2
fi

DIR="$2"

if [ -d "$DIR" ];
then
	echo "DIR $DIR exists."
else
	echo "DIR $DIR doesn't exits" >&2
fi

