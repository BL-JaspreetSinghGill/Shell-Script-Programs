#!/bin/bash -x

flipCoin () {
	local randomValue=$1;
	if [ $randomValue -eq 1 ]
	then
   	echo "HEAD";
	else 
   	echo "TAIL";
	fi;
}

flipCoin $(( RANDOM%2 ));
