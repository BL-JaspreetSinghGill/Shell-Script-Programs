#!/bin/bash -x

isContinue="true";

askUserInput () {
	printf "ENTER \n\t1: DegC to DegF \n\t2: DegF to DegC \n\t3: EXIT\n";
	read -p "ENTER YOUR CHOICE : " choice;

	case $choice in
			1)
				read -p "ENTER THE CELCIUS VALUE : " celcius;
				degreeCelciusToFahrenheit $celcius;
				;;
			2)
				read -p "ENTER THE FAHRENHEIT VALUE : " fahrenheit;
				degreeFahrenheitToCelcius $fahrenheit;
				;;
			3)
				isContinue="false";
				;;
			*)
				echo "INVALID CHOICE";
	esac;
}

degreeCelciusToFahrenheit () {
	celcius=$1;

	fahrenheit=$(( $celcius * 9/5 + 32 ));
	echo "FAHRENHEIT VALUE : " $fahrenheit;
}

degreeFahrenheitToCelcius () {
	fahrenheit=$1;

	celcius=$(( $(( $fahrenheit-32 )) * 5/9 ));
	echo "CELCIUS VALUE : " $celcius;
}


degreeConversion () {
	while [ "$isContinue" != "false" ]
	do
   	askUserInput
	done;
}

degreeConversion;
