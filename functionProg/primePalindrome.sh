#!/bin/bash -x

. ../forProg/primeFunction.sh; #prime function (checkPrime) is in primeFunction.sh
. ./palindromeFunction.sh; #To get reverse of a number (getReverseOfANumber) function is in palindromeFunction.sh

read -p "ENTER THE NUMBER : " number;

getPrimeResult () {
   local number=$1;
   local isPrime=$2;

   if [ "$isPrime" = "true" ];
	then
		echo "THE GIVEN NUMBER" $number "IS A PRIME NUMBER";
   else
		echo "THE GIVEN NUMBER" $number "IS NOT A PRIME NUMBER";
		exit 0;
	fi;
}

primeNumberCheck () {
	number=$1;

	isPrime=$(checkPrime $number);
	getPrimeResult $number $isPrime;
}

primePalindrome () {
	local number=$1;

	primeNumberCheck $number;
	rev=$(getReverseOfANumber $number);
	primeNumberCheck $rev;
}

primePalindrome $number;
