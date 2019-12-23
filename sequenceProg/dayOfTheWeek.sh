#! /bin/bash -x

date=$1;
month=$2;
year=$3;

y0=$(( year-( ( 14-month )/12 ) ))
x=$(( y0-( y0/4 )-( y0/100 )+( y0/400 ) ));
m0=$(( month+( 12*( ( 14-month )/12 ) )-2 ));
d0=$(( ( date+x+( ( 31*m0)/12 ) )%7  ));

echo $d0;

case $d0 in
		0)
      	echo "SUNDAY";
         ;;
      1)
         echo "MONDAY";
         ;;
		2)
         echo "TUESDAY";
         ;;
		3)
         echo "WEDNESDAY";
         ;;
		4)
         echo "THURSDAY";
         ;;
      5)
         echo "FRIDAY";
         ;;
      6)
         echo "SATURDAY";
         ;;
		 *)
         echo "INVALID DAY";
         ;;
esac

