#!/bin/bash -x

startRange=1;
endRange=100;

echo "THINK OF A NUMBER BETWEEN" $startRange "T0" $endRange;

calculateMidElement () {
	local low=$1;
	local high=$2;

	mid=$(( $(($low+$high))/2 ));
	echo $mid;
}

askUserInput () {
	local mid=$1;

	printf "ENTER \n\t1: IS YOUR NUMBER : $mid \n\t2: IS YOUR NUMBER LESS THAN $mid \n\t3: IS YOUR NUMBER GREATER THAN $mid\n";
	read -p "ENTER YOUR CHOICE : " choice;

	case $choice in
			1)
				echo "YEAH NUMBER FOUND!!!!!!  "$mid;
				exit 0;
				;;
			2)
				endRange=$(( $mid-1 ));
				;;
			3)
            startRange=$(( $mid+1 ));
				;;
			*)
				echo "INVALID NUMBER";
	esac;
}

guessNumber () {
	while [ $startRange -ne $endRange ]
	do
		midElement=$(calculateMidElement $startRange $endRange);
		askUserInput $midElement;
	done;

	if [ $startRange -eq $endRange ]
	then
		echo "YEAH NUMBER FOUND!!!!!!  "$startRange;
	fi;
}

guessNumber;
