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

	case $number in
         0)
            echo "ZERO";
            ;;
         1)
            echo "ONE";
            ;;
         2)
            echo "TWO";
            ;;
         3)
            echo "THREE";
            ;;
         4)
            echo "FOUR";
            ;;
         5)
            echo "FIVE";
            ;;
         6)
            echo "SIX";
            ;;
			7)
            echo "SEVEN";
            ;;
         8)
            echo "EIGHT";
            ;;
         9)
            echo "NINE";
            ;;
         *)
            echo "INVALID NUMBER";
            ;;
   esac;
}

checkDigits $number; 
if [ $? -eq 1 ]
then
   echo "ENTER ONE DIGIT VALUE ONLY";
   exit 0;
fi;

printNumberWord $number;
