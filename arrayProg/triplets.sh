#!/bin/bash -x

. ./sortArrayFunction.sh #(sortArray) is in sortArrayFunction.sh file.

declare -a array;
declare -a tripletArray;
counter=0;

read -p "ENTER THE NUMBER OF ELEMENTS : " number;

addElementsInArray () {
	for (( counter=0; counter<$number; counter++ ))
	do
   	read -p "ENTER THE $(($counter+1)) ELEMENT : " array[$counter];
	done;
}

triplet () {
	array=("$@");

	for (( i=0; i<${#array[@]}-2; i++ ))
	do
		for (( j=i+1; j<${#array[@]}-1; j++ ))
		do
			for (( k=i+2; k<${#array[@]}; k++ ))
			do
				if [ $(( ${array[$i]} + ${array[$j]} + ${array[$k]} )) = 0 ]
				then
					#echo "TRIPLETS : " ${array[$i]} ${array[$j]} ${array[$k]};
					element=$(sort "${array[$i]} ${array[$j]} ${array[$k]}");
					addTripletInArray "$element";
					break;
				fi;
			done;
		done
	done;
}

sort () {
	number=$1;
	declare -a tempArray;

	tempArray[0]=`echo $number | cut -d' ' -f1`;
	tempArray[1]=`echo $number | cut -d' ' -f2`;
	tempArray[2]=`echo $number | cut -d' ' -f3`;

	tempArraySort=$(sortArray ${tempArray[@]});
	echo ${tempArraySort[@]};
}

addTripletInArray () {
	elements="$1";

	if [[ " ${tripletArray[*]} " != *"$elements"* ]]
	then
		tripletArray[$counter]="$elements";
		echo "CHECK THIS : "${tripletArray[0]};
		((counter++));
	fi;
}

addElementsInArray;
triplet ${array[@]};
echo ${tripletArray[@]};
