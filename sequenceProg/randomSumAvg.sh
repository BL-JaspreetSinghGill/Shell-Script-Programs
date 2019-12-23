#!/bin/bash -x

VALUE=5;

sum=0;
avg=0;

for (( counter=1; counter<=$VALUE; counter++ ))
do
	sum=$(( $sum+$(( RANDOM%90+10 )) ));
done

echo "SUM IS : "$sum;
echo "AVERAGE IS : " $(echo "scale=5; $sum/$VALUE" | bc);
