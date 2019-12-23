#!/bin/bash -x

couter;
counter=0

a=1;
b=2;

vegetable[(( count++ ))]="rice";
vegetable[(( count++ ))]="abc";

fruits[(( counter++ ))]="Apple";
fruits[(( counter++ ))]="Banana";
fruits[(( counter++ ))]="Orange";
fruits[(( counter++ ))]="$a $b";
fruits[(( counter++ ))]=1;
fruits[(( counter++ ))]=2.5;
fruits[(( counter++ ))]=${vegetable[@]};


echo "ELEMENTS : "${fruits[@]};
echo "KEYS : "${!fruits[@]};
#echo ${fruits[5]};
#echo $fruits; 
