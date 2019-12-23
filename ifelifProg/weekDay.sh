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
      echo "SUNDAY";
	elif [ $number -eq 1 ]
	then
		echo "MONDAY";
	elif [ $number -eq 2 ]
	then
		echo "TUESDAY";
	elif [ $number -eq 3 ]
   then
      echo "WEDNESDAY";
	elif [ $number -eq 4 ]
   then
      echo "THURSDAY";
	elif [ $number -eq 5 ]
   then
      echo "FRIDAY";
	elif [ $number -eq 6 ]
   then
      echo "SATURDAY";
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
