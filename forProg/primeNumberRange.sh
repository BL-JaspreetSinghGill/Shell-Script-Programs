#!/bin/bash -x

. ./primeFunction.sh; #prime function (checkPrime) is in primeFunction.sh

read -p "ENTER THE START RANGE : " startRange;
read -p "ENTER THE END RANGE : " endRange;

getPrimeNumberInRange () {
	for (( counter=$startRange; counter<=$endRange; counter++ ))
	do
		isPrime=$(checkPrime $counter);
		getPrimeResult $counter $isPrime;
	done
}

getPrimeResult () {
	local number=$1;
	local isPrime=$2;

	if [ "$isPrime" = "true" ];
	then
   	echo "THE GIVEN NUMBER" $number "IS A PRIME NUMBER";
	fi;
}

getPrimeNumberInRange;
