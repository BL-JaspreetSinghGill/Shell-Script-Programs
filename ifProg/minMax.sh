
#!/bin/bash -x

DIGITS=3;
read -p "Enter 5 values of three digit only: " firstVal secondVal thirdVal fourthVal fifthVal;

checkDigits() {
	local firstValueDigits=${#1};
	local secondValueDigits=${#2};
	local thirdValueDigits=${#3};
	local fourthValueDigits=${#4};
	local fifthValueDigits=${#5};	

	if [ $firstValueDigits -eq $DIGITS ] && [ $secondValueDigits -eq $DIGITS ] && [ $thirdValueDigits -eq $DIGITS ] && [ $fourthValueDigits -eq $DIGITS ] && [ $fifthValueDigits -eq $DIGITS ]
	then
		#echo true; #0 for true;
		return 0;
	else 
		#echo false; #1 for false;
		return 1;
	fi;
}

getResult() {
	local operation=$1;
	local message=$2;
	local firstValue=$3;
	local secondValue=$4;
	local thirdValue=$5;
	local fourthValue=$6;
	local fifthValue=$7;

	if [ $firstValue $operation $secondValue ] && [ $firstValue $operation $thirdValue ] && [ $firstValue $operation $fourthValue ] && [ $firstValue $operation $fifthValue ]
	then
		echo $firstValue " IS "$message;
	elif [ $secondValue $operation $thirdValue ] && [ $secondValue $operation $fourthValue ] && [ $secondValue $operation $fifthValue ] 
	then
		echo $secondValue " IS "$message;
	elif [ $thirdValue $operation $fourthValue ] && [ $thirdValue $operation $fifthValue ] 
   then
      echo $thirdValue " IS "$message;
	elif [ $fourthValue $operation $fifthValue ]  
   then
      echo $fourtValue " IS "$message;
	else
		echo $fifthValue " IS "$message;
	fi	
}

checkDigits $firstVal $secondVal $thirdVal $fourthVal $fifthVal; 
if [ $? -eq 1 ]
then
	echo "ENTER THREE DIGITS VALUES ONLY";
	exit 0;
fi;

getResult -gt "MAXIMUM" $firstVal $secondVal $thirdVal $fourthVal $fifthVal;
getResult -lt "MINIMUM" $firstVal $secondVal $thirdVal $fourthVal $fifthVal;
