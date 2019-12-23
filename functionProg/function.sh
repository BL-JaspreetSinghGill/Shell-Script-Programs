#!/bin/bash -x

myFun ()  {
	echo $1;
}

result=$( myFun $(( RANDOM%2 )) );
if [ $result -eq 1 ] 
	then
		echo "SUCCESS";
	else 
		echo "FAIL";
fi;
