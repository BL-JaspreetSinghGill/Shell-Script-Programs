#!/bin/bash -x

checkValidDates() {
	local date=$1;
	local month=$2;
	
	if ([ $month -eq 3 ] && [ $date -ge 20 ] && [ $date -le 31 ]) || ([ $month -eq 6 ] && [ $date -ge 1 ] && [ $date -le 20 ]) || ([ $month -gt 3 ] && [ $month -lt 6 ])
   then
      echo true;
   else
      echo false;
   fi;
}

checkValidDates $1 $2;
