#!/bin/bash -x

LIMIT=256;

result=0;

printTable () {
	local counter=$1;
	result=$(( 2*$counter ));

	echo "2 * "$counter ": "$result;
}

printTableMain () {
	local number=$1;
	local counter=1;

	while [[ $result -ne $((2**$number)) && $result -ne $LIMIT ]]
	do
		printTable $counter;
		counter=$(($counter+1));
	done;
}

printTableMain $1;
