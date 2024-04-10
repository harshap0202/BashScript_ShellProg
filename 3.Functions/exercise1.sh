#!/bin/bash

function file_count() {
	local NUM=$(ls -l | grep "^-" | wc -l)
	echo "Current directory has : $NUM files"
}

file_count
