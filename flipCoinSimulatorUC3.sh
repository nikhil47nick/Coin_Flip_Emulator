#!/bin/bash
h=0
t=0

while [ $h -le 21 -o $t -le 21 ]
do

if [ $((RANDOM % 2)) -eq 0 ]
then
h=$(( $h + 1 ))
else
t=$(( $t + 1 ))
fi

done

if [ $h -eq 21 ]
then
echo "Head win"
elif [ $t -eq 21 ]
then
echo "Tail win"
elif [ $h -eq $t ]
then
echo "Tie"
fi

