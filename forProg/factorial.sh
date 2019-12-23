#!/bin/bash -x

fact=1;

read -p "ENTER THE NUMBER : " number;

factorial () {
	local number=$1;
	
	for (( counter=1; counter<=$number; counter++ ))
	do
		fact=$(($fact*$counter));
	done;
}

factorial $number;

echo "FACTORIAL OF "$number " IS : "$fact;
