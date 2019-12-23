#!/bin/bash -x

employeeFullTime=1
employeePartTime=2;
randomValue=$((RANDOM%3));
employeeHourPay=1000;

if [ $randomValue -eq $employeeFullTime ]
	then
		echo "Employee is present and Full Time";
		employeeWorkingHours=8;
	elif [ $randomValue -eq $employeePartTime ]
		then
			echo "Employee is present and Half Time";
			employeeWorkingHours=4;
	else 
		echo "Employee is absent";
		employeeWorkingHours=0;
fi
echo "Pay " $(( $employeeWorkingHours*$employeeHourPay ));
