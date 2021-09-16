#!/bin/bash
echo "Enter no of times to toss: "
read n
heads=0
tails=0
flips=0
target=21
min_diff=2
while(( 1 ))
do
    (( flips++ ))
    echo "Flip-$flips is "
    toss=$(( RANDOM % 2 ))
    if(( toss == 0 ))
    then
        echo "Heads"
        (( heads++ ))
    else
        echo "Tails"
        (( tails++ ))
    fi
	 diff_of_head_&_tail=$(( heads - tails ))
	 if(( heads == target && diff_of_head_&_tail >= min_diff ))
    then
        echo "Heads won by $diff_of_head_&_tail points"
        break
    elif(( tails == target && ${diff_of_head_&_tail#-} >= min_diff ))
    then
         echo "Tails won by ${diff_of_head_&_tail#-} points"
         break
    fi

done
echo "The Heads count is $heads and Tails Count is $tails"

