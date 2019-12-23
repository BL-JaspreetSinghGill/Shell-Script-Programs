#!/bin/bash -x

count=0;

declare -A birthDictionary;

getBirthYear () {
   echo $(( RANDOM%2+92 ));
}

getBirthMonth () {
	echo $(( RANDOM%12+1 ));
}

storeInDictionary () {
	birthMonth=$1;
	birthYear=$2;

	value="$birthMonth-$birthYear";

	birthDictionary[$birthMonth]="${birthDictionary[$birthMonth]} $value";
}

printBirthMonth () {
	for (( i=1; i<=12; i++ ))
	do
		echo ${birthDictionary[$i]};
	done;
}

birthMonthMain () {
	while [ $count -ne 50 ]
	do
		birthYear=$(getBirthYear);
		birthMonth=$(getBirthMonth);
		storeInDictionary $birthMonth $birthYear;
		(( count++ ));
	done;

	printBirthMonth;
}

birthMonthMain;
