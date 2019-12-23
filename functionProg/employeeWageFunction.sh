#!/bin/bash -x

EMPLOYEE_Full_Time=1
EMPLOYEE_Part_Time=2;
EMPLOYEE_Hour_Pay=1000;
EMPLOYEE_WORKING_DAYS=20;

pay=0;
workingDays=0;

getEmployeeWorkingHours () {
	case $randomValue in
   	$employeeFullTime)
      	employeeWorkingHours=8;
      	;;
      $employeePartTime)
      	employeeWorkingHours=4;
      	;;
      *)
      	employeeWorkingHours=0;
      	;;
	esac
	echo $employeeWorkingHours;
}

while [ $day -lt $employeeWorkingDays ]
do
	randomValue=$((RANDOM%3));
	pay=$(( $pay+$(( $employeeWorkingHours*$employeeHourPay )) ));
	#pay+= $(( $employeeWorkingHours*$employeeHourPay ));
done

echo "Pay " $pay;
