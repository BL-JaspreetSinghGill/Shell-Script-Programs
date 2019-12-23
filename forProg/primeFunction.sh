#!/bin/bash -x

checkPrime () {
   local number=$1;
	local isPrime="true";

   for (( counter=2; counter<=$(($number/2)); counter++ ))
   do
      if [ $(($number%$counter)) -eq 0 ]
      then
         isPrime="false";
         break;
      fi;
   done;

   echo $isPrime;
}
