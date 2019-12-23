#/bin/bash -x

amount=100;
goal=200;
bet=0;
win=0;
loss=0;

gambler () {
	while [[ $amount -ne 0 && $amount -ne $goal ]]
	do
		if [ $(( RANDOM%2 )) -eq 1 ]
		then
			amount=$(( $amount+1 ));
			win=$(( $win+1 ));
		else
			amount=$(( $amount-1 ));
			loss=$(( $loss+1 ));
		fi;
		bet=$(( $bet+1 ));
	done;
}

gambler $amount $goal;

echo "AMOUNT : "$amount;
echo "BETS : "$bet;
echo "WIN : "$win;
echo "LOSS : "$loss;
