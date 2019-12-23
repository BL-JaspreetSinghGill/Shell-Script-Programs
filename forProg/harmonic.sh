#!/bin/bash -x

sum=0;

getHarmonicResult () {
   value=$1;
   
   for (( counter=1; counter<=$value; counter++ ))
   do
      result=$(echo "scale=3; 1/$counter" | bc);
		sum=`echo "scale=3; $sum+$result" | bc`;
   done;
}

getHarmonicResult $1;

echo "THE HARMONIC RESULT IS : "$sum;
