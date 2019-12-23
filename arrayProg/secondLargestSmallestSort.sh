#!/bin/bash -x

. ./sortArrayFunction.sh #(sortArray) is in sortArrayFunction.sh file.

RANDOM_NUMBER=10;

declare -a array;
declare -a sortedArray;
counter=0;

generateRandomNumber () {
	while [ ${#array[@]} -ne $RANDOM_NUMBER ]
	do
		value=$((RANDOM%900+100));
		storeNumberInArray $value;
	done;
}

storeNumberInArray () {
	value=$1;

	if [[ "${array[*]}" != *"$value"* ]]
   then
      array[counter]=$value;
      ((counter++));
   fi;
}

getMinimumMaximum () {
	sortArray ${array[@]};

	echo "SORTED ARRAY : " ${array[@]};
	echo "SECOND MINIMUM : " ${array[1]};
	echo "SECOND MAXIMUM : " ${array[${#array[@]}-2]};
}

generateRandomNumber;

getMinimumMaximum;
