#!/bin/bash -x

. ./primeFunction.sh; #prime function (checkPrime) is in primeFunction.sh

read -p "ENTER THE NUMBER: " number;

declare -a factorsArray;
count=0; #This is for storing the elements at specific index in the array.

getPrimeResult () {
   local number=$1;
   local isPrime=$2;

   if [ "$isPrime" = "true" ]
   then
      echo "THE GIVEN NUMBER" $number "IS A PRIME NUMBER";
   else
		getFactors $number;
   fi;
}

getFactors () {
	local number=$1;

	for (( counter=2; counter<=$number; counter++ ))
	do
		if [ $(($number%$counter)) -eq 0 ]
		then
			number=$(($number/$counter));
			addFactorsInArray $counter;
			numberCheck $number;
			counter=1;
		fi;
	done;
}

addFactorsInArray() {
	counter=$1;

	if [[ ! " ${factorsArray[@]} " =~ " ${counter} " ]]
	then
	factorsArray[$count]=$counter;
	count=$count+1;
	fi;
}


numberCheck () { #This method is used for checking whether the number is equal to one or not if it is 1 then stop.
	local number=$1;

	if [ $number -eq 1 ]
	then
		break;
	fi;
}

getPrimeFactors () {
	for (( counter=0; counter<${#factorsArray[@]}; counter++ ))
	do
		isPrime=$(checkPrime ${factorsArray[$counter]});
		getPrimeResult ${factorsArray[$counter]} $isPrime;
	done;
}

isPrime=$(checkPrime $number);
getPrimeResult $number $isPrime;

getPrimeFactors;
