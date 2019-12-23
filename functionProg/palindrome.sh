#!/bin/bash -x

. ./palindromeFunction.sh #palindrome function (checkPalindrome) is in palindromeFunction.sh

read -p "ENTER THE NUMBER : " number;

palindrome () {
	local number=$1;

	isPalindrome=$(checkPalindrome $number);

	if [ "$isPalindrome" = "true" ];
	then
		echo "THE GIVEN NUMBER" $number "IS PALINDROME";
	else
		echo "THE GIVEN NUMBER" $number "IS NOT PALINDROME";
	fi;
}

palindrome $number;
