#!/bin/bash -x

DIGITS=1;
read -p "ENTER THE NUMBER : " number

checkDigits () {
   local numberDigits=${#1};
  
   if [ $numberDigits -eq $DIGITS ]
   then
      return 0; #0 for true;
   else 
      return 1; #1 for false;
   fi;
}

printNumberWord () {
	local number=$1;
	
	if [ $number -eq 0 ]
   then 
      echo "ZERO";
	elif [ $number -eq 1 ]
	then
		echo "ONE";
	elif [ $number -eq 2 ]
	then
		echo "TWO";
	elif [ $number -eq 3 ]
   then
      echo "THREE";
	elif [ $number -eq 4 ]
   then
      echo "FOUR";
	elif [ $number -eq 5 ]
   then
      echo "FIVE";
	elif [ $number -eq 6 ]
   then
      echo "SIX";
   elif [ $number -eq 7 ]
   then
      echo "SEVEN";
   elif [ $number -eq 8 ]
   then
      echo "EIGHT";
	elif [ $number -eq 9 ]
	then
		echo "NINE";
	else
		echo "INVALID NUMBER";
	fi;
}

checkDigits $number; 
if [ $? -eq 1 ]
then
   echo "ENTER ONE DIGIT VALUE ONLY";
   exit 0;
fi;

printNumberWord $number;
