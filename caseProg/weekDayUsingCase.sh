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
				echo "SUNDAY";
				;;
			1)
            echo "MONDAY"
            ;;
			2)
            echo "TUESDAY";
            ;;
			3)
            echo "WEDNESDAY"
            ;;
         4)
            echo "THURSDAY";
            ;;
         5)
            echo "FRIDAY";
            ;;
			6)
            echo "SATURDAY";
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
