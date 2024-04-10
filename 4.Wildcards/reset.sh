#!/bin/bash

NUM=1
for LIST in $(ls *.jpg)
do
	mv $LIST photo${NUM}.jpg
	((NUM++))
done
