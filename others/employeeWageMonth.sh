#!/bin/bash -x

employeeFullTime=1
employeePartTime=2;
employeeHourPay=1000;
employeeWorkingDays=20;
pay=0;

for (( day=1; day<=$employeeWorkingDays; day++ ))
do
	randomValue=$((RANDOM%3));
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
	pay=$(( $pay+$(( $employeeWorkingHours*$employeeHourPay )) ));
	#pay+= $(( $employeeWorkingHours*$employeeHourPay ));
done

echo "Pay " $pay;
