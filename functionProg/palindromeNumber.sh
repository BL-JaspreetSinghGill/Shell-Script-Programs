#!/bin/bash -x

. ./palindromeFunction.sh #To get reverse of a number (getReverseOfANumber) function is in palindromeFunction.sh

read -p "ENTER THE FIRST NUMBER : " firstNumber;
read -p "ENTER THE SECOND NUMBER: " secondNumber;

palindromeNumber () {
	local firstNumber=$1;
	local secondNumber=$2;

	checkDigits $firstNumber $secondNumber;
	rev=$(getReverseOfANumber $firstNumber);

	if [ "$rev" = "$secondNumber" ];
	then
		echo "THE GIVEN NUMBERS" $firstNumber "AND" $secondNumber "ARE PALINDROME";
	else
		echo "THE GIVEN NUMBERS" $firstNumber "AND" $secondNumber  "ARE NOT PALINDROME";
	fi;
}

checkDigits () {
	local firstNumber=$1;
	local secondNumber=$2;
	
	if [ ${#firstNumber} -ne ${#secondNumber} ]
	then
		echo "THE GIVEN NUMBERS" $firstNumber "AND" $secondNumber  "ARE NOT PALINDROME";
		exit 0;
	fi;
}

palindromeNumber $firstNumber $secondNumber;
