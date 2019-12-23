#!/bin/bash -x

minimum=0;
maximum=0;

read -p "ENTER THE FIRST NUMBER: " a
read -p "ENTER THE SECOND NUMBER: " b
read -p "ENTER THE THIRD NUMBER: " c

arithmeticOperation1 () {
	echo $(( a+b*c ));
} 

arithmeticOperation2 () {
	echo $(( a%b+c ));
}

arithmeticOperation3 () {
	echo $(( c+a/b ));
}

arithmeticOperation4 () {
	echo $(( a*b+c ));
}

checkMinimumMaximum () {
	local result=$1;
	
	if [ $result -lt $minimum ]
   then
		minimum=$result;
   fi;

	if [ $result -gt $maximum ]
	then
		maximum=$result;
	fi;
} 

result=$(arithmeticOperation1);
minimum=$result;
maximum=$result;
checkMinimumMaximum $result;

result=$(arithmeticOperation2);
checkMinimumMaximum $result;

result=$(arithmeticOperation3);
checkMinimumMaximum $result;

result=$(arithmeticOperation4);
checkMinimumMaximum $result;

echo "MINIMUM : "$minimum;
echo "MAXIMUM : "$maximum;
