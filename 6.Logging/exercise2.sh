#!/bin/bash

function logging() {
	local NUM="Random Number : $@"
	echo "$NUM"
	logger -i -t "randomly" -p user.info "$NUM"
}

N=1
while [ $N -le "3" ]
do
	logging $RANDOM
	((N++))
done

