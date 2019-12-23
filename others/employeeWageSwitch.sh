#!/bin/bash -x

employeeFullTime=1
employeePartTime=2;
randomValue=$((RANDOM%3));
employeeHourPay=1000;

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

echo "Pay " $(( $employeeWorkingHours*$employeeHourPay ));

