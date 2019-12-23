#!/bin/bash -x

DIGITS=4;
read -p "ENTER YEAR: " year;

checkDigits() {
   local yearDigits=${#1};
  
	if [ $yearDigits -eq $DIGITS ]
   then
   	return 0; #0 for true;
   else 
   	return 1; #1 for false;
   fi;
}

isLeapYear() {
	local year=$1;

	if [ $(($year%4)) -eq 0 ] && [ $(($year%100)) -ne 0  ] || [ $(($year%400)) -eq 0 ]
	then
		return 0; #0 for true;
	else
		echo "LEAP YEAR FALSE";
		return 1; #1 for false;
	fi;
}

checkDigits $year; 
if [ $? -eq 1 ]
then
   echo "ENTER FOUR DIGITS VALUE ONLY";
   exit 0;
fi;

isLeapYear $year;
if [ $? -eq 0 ]
then
	echo "THE GIVEN YEAR "$year "IS A LEAP YEAR";
else 
	echo "THE GIVEN YEAR "$year "IS NOT A LEAP YEAR";
fi;
