#!/bin/bash -x

DIGITS=2;
START_RANGE=0;
END_RANGE=100;

declare -a repeatedDigitArray;
counter=0;

checkDigits () {
	number=$1;

	if [ ${#number} -eq $DIGITS ]
	then
		echo "true";
	else
		echo "false";
	fi;
}

getDigits () {
   message=$1;
   offset=$2;
   length=$3;

   result=$(echo "$message" | awk '{print substr ($0, '$offset', '$length')}');
	echo $result;
}

getDigitsRepeatedTwice () {
	for (( counter=$START_RANGE; counter<=$END_RANGE; counter++ ))
	do
		isDigits=$(checkDigits $counter);
		if [ "$isDigits" = "true" ]
		then
			firstCharacter=$(getDigits $counter 1 1);
			secondCharacter=$(getDigits $counter 2 1);
			if [ "$firstCharacter" = "$secondCharacter" ]
			then
				storeNumberInArray $counter;
			fi;
		fi;
	done;
}

storeNumberInArray () {
	number=$1;

	if [[ "${repeatedDigitArray[*]}" != *"$number"* ]]
	then
		repeatedDigitArray[counter]=$number;
		((counter++));
	fi;
}

getDigitsRepeatedTwice;
echo ${repeatedDigitArray[@]};
