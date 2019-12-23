#!/bin/bash -x

printf "ENTER \n\t1: FEET TO INCH \n\t2: FEET TO METER\n\t3: INCH TO FEET \n\t4: METER TO FEET\n";
read -p "ENTER YOUR CHOICE : " choice;

readInput () {
	read -p "ENTER NUMBER : " number;
}

feetToInchConversion () {
	echo $(( $1*12 ));
}

feetToMeterConversion () {
	echo $(echo "scale=5; $1*0.3048" | bc);
}

inchToFeetConversion () {
	echo $(echo "scale=5; $1*0.0833333" | bc);
}

meterToFeetConversion () {
	echo $(echo "scale=5; $1*3.28084" | bc);
}

unitConversion () {
	local choice=$1;
	local result=0;
	
	case $choice in
			1)
				readInput;
				result=$(feetToInchConversion $number);
				echo $result "INCH";
				;;
			2)
				readInput;
				result=$(feetToMeterConversion $number);
				echo $result "METER";
				;;
			3)
				readInput;
            result=$(inchToFeetConversion $number);
            echo $result "FEET";
				;;
			4)
				readInput;
            result=$(meterToFeetConversion $number);
            echo $result "FEET";
				;;
			*)
				echo "INVALID NUMBER";
	esac;
}

unitConversion $choice;
