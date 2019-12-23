#!/bin/bash -x

read -p "ENTER THE VALUE : " number;

getDigits () {
	number=$1;

	echo ${#number};
}

unitsMain () {
	digits=$(getDigits $number);

	if [ $digits -eq 1 ]
	then
		echo "UNIT";
	elif [ $digits -eq 2 ]
	then
		echo "TEN";
	elif [ $digits -eq 3 ]
	then
		echo "HUNDRED";
	elif [  $digits -eq 4 ]
	then
		echo "THOUSAND";
	else
		echo "INVALID NUMBER";
	fi;
}

unitsMain;


