#!/bin/bash
echo "Enter no of times to toss: "
read n
heads=0
tails=0
for(( i = 1; i <= n; i++ ))
do
    toss=$(( RANDOM % 2 ))
    if(( toss == 0 ))
    then
        echo "Flip-$i Heads"
        (( heads++ ))
    else
        echo "Flip-$i Tails"
        (( tails++ ))
    fi
done
echo "The Heads count is $heads and Tails Count is $tails"
if(( heads > tails ))
then
    echo "Head is Winner"
elif(( tails > heads ))
then
    echo "Tail is Winner"
else
    echo "It is looser"
fi
