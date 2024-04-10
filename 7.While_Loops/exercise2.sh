#!/bin/bash

read -p "How many lines of /etc/passwd would you like to see?" NUM

N=1
while read LINE
do
	echo "${N}: $LINE "
	((N++))
done < /etc/passwd | head -${NUM}
