#!/bin/bash -x

read -p "ENTER THE VALUE : " number;

getDigits () {
   number=$1;

   echo ${#number};
}

unitsMain () {
   digits=$(getDigits $number);

   case $digits in
			1)
				echo "UNIT";
				;;
			2)
				echo "TEN";
				;;
      	3)
				echo "HUNDRED";
				;;
			4)
				echo "THOUSAND";
				;;
			*)
				echo "INVALID NUMBER";
   esac;
}

unitsMain;

