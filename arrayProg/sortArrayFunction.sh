#!/bin/bash -x

sortArray () {
	array=("$@");

	for (( i=0; i<${#array[@]}-1; i++ ))
	do
		for (( j=i+1; j<${#array[@]}; j++ ))
		do
			if [ ${array[$i]} -gt ${array[$j]} ]
			then
				temp=${array[$i]};
				array[$i]=${array[$j]};
				array[$j]=$temp;
			fi;
		done
	done;

	echo ${array[@]};
}
