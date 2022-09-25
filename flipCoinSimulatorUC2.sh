#!/bin/bash
h=0
t=0

while [ $h -le 10 -o $t -le 10 ]
do

if [ $((RANDOM % 2)) -eq 0 ]
then
h=$(( $h + 1 ))
else
t=$(( $t + 1 ))
fi

done

echo "Head win $h Times"
echo "Tail win $t times"




