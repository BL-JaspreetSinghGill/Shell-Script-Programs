#!/bin/bash -x

firstRandomValue=$(( RANDOM%6 + 1));
secondRandomValue=$(( RANDOM%6 + 1));
echo $(( $firstRandomValue+$secondRandomValue ));

#echo $(( $(( RANDOM%6 + 1 )) + $(( RANDOM%6 +1 )) ));
