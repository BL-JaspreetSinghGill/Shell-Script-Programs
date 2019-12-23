#!/bin/bash -x

printTable () {
	local value=$1;
	
	for (( counter=1; counter<=$((2**$value)); counter++ ))
	do
		echo "2 * "$counter " : "$((2*$counter));
	done;
}

printTable $1;
