#!/bin/bash -x

. ./primeFunction.sh; #prime function (checkPrime) is in primeFunction.sh

getPrimeResult () {
   local number=$1;
   local isPrime=$2;

   if [ "$isPrime" = "true" ];
	then
   	echo "THE GIVEN NUMBER" $number "IS A PRIME NUMBER";
	else
   	echo "THE GIVEN NUMBER" $number "IS NOT A PRIME NUMBER";
	fi;
}

isPrime=$(checkPrime $1);
getPrimeResult $1 $isPrime;
