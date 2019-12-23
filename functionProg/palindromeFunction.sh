#!/bin/bash -x

checkPalindrome () {
	local number=$1;
	local isPalidrome="false";

	reverseNumber=$(getReverseOfANumber $number);

	if [ $number -eq $reverseNumber ]
	then
		isPalidrome="true";
	fi;

	echo $isPalidrome;
}

getReverseOfANumber () {
	local number=$1;
	local rem=0;
	local rev=0;

	while [ $number -ne 0  ]
	do
		rem=$(( $number%10 ));
		rev=$(( $rev*10+$rem ));
		number=$(( $number/10 ));
	done

	echo $rev;
}

