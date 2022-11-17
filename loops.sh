#! /usr/bin/bash

#i=1
#while [ $i -le 10 ]
#do
#	echo "$i"
#	((i+=1))
#done

counter=$1
factorial=1
while [ $counter -gt 0 ]
do
	factorial=$(( $factorial * $counter ))
	((counter-=1))
done
echo $factorial
