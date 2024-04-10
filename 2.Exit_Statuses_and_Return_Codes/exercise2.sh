#!/bin/bash

CHECK=$1

if [ -e $CHECK ]
then 
	if [ -f $CHECK ]
	then 
		echo "$CHECK is a FILE. EXIT CODE 0"
		exit 0

	elif [ -d $CHECK ]
	then 
		echo "$CHECK is a DIRECTORY. EXIT CODE 1"
		exit 1

	else
		echo "$CHECK is an other type of file. EXIT CODE 2"
		exit 2
	fi

else 
	echo "$CHECK doesn't exist."
fi
