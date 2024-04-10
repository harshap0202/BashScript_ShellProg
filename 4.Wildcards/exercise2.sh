#!/bin/bash

read -p "Please enter a file extension: " EXT

DATE=$(date '+%Y-%m-%d')

read -p "Please enter a file prefix (Press ENTER for $DATE) : " PRE
if [ -z "$PRE" ]
then
	for LIST in $(ls *.${EXT})
	do
		mv $LIST "${DATE}-${LIST}"
		echo "Renaming ${LIST} as ${DATE}-${LIST}"
	done

else
	for LIST in $(ls *.${EXT})
	do
		mv $LIST "${PRE}-${LIST}"
		echo "Renaming ${LIST} as ${PRE}-${LIST}"
	done
fi
