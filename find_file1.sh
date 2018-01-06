#!/bin/bash
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

