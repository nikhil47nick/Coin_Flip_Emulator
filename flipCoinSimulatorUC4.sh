#!/bin/bash 
h=0
t=0
count=0
win=0

while [ $win -eq 0 ]
do
count=$(($count + 1))
if [ $((RANDOM % 2)) -eq 0 ]
then
h=$(( $h + 1 ))
else
t=$(( $t + 1 ))
fi

if [ $h -ge 21 -o $t -ge 21 ]
then

	if [ $(( $h - $t )) -eq 2 -o $(( $t - $h )) -eq 2 ]
	then
		if [ $h -gt $t ]
		then
		echo "Head Wins and total win-$h"
		echo "Tail Wins and total win-$t"
		else
		echo "Head Wins and total win-$h"
                echo "Tail Wins and total win-$t"

		fi
	win=1
	fi

fi
done
echo "Total Draw : $count"
