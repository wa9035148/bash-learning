#!/bin/bash

# generate random true or false.
# generally way is %2, but distribution will be better if use right shift.
count=10
until [ "$count" -eq 0 ]
do
	number=$RANDOM
	(( count-- ))
	(( number >>= 14 ))
	#number=$(( $number%2 ))
	echo $number
done

# a random number bigger than floor, less than celling
number=0
FLOOR=500
CELLING=1000
while [ "$number" -le $FLOOR ]
do
	number=$RANDOM
	number=$(($number%$CELLING))
done
echo "limit random number is $number"


