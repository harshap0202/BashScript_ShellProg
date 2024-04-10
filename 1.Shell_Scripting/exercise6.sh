#!/bin/bash

read -p "Enter File/Dir/Other : " CHECK

if [ -e $CHECK ]
then 
	if [ -f $CHECK ]
	then 
		echo "$CHECK is a FILE"
		ls -l | grep $CHECK

	elif [ -d $CHECK ]
	then 
		echo "$CHECK is a DIRECTORY"
		ls -l | grep $CHECK
	
	else
		echo "$CHECK is OTHER type of file"
	fi
else
	echo "$CHECK doesn't exist"
fi
