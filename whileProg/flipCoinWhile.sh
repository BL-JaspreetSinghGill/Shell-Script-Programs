#!/bin/bash -x

LIMIT=11;

headCount=0;
tailCount=0;

flipCoin () {
	local randomValue=$1;
	if [ $randomValue -eq 1 ]
	then
		headCount=$(($headCount+1));
   	echo "HEAD";
	else
		tailCount=$(($tailCount+1));
   	echo "TAIL";
	fi;
}

flipCoinMain () {
	#while [[ $headCount -lt $LIMIT && $tailCount -lt $LIMIT ]]
	while [[ $headCount -ne $LIMIT && $tailCount -ne $LIMIT ]]
	do
		flipCoin $(( RANDOM%2 ));
	done;
}

flipCoinMain

echo "HEAD COUNT : "$headCount;
echo "TAIL COUNT : "$tailCount;
