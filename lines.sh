#!/usr/bin/bash

#LINE=1
#
#while read -r CURRENT_LINE
#do
#	echo "$LINE: $CURRENT_LINE"
#	(( LINE++ ))
#done < "file.txt" 

FILE=$(cat file.txt)

for line in $FILE
do
	echo "$line"
done

