#!/bin/bash

F=50
f=1
a=0
s=0 
for C in $(seq 1 $F)
do
    for n in $(seq $C)
    do 
        f=$( echo "$f*$n" | bc -l)
    done
    d=$(((2**(C-1)+a)))
    a=$d
    m=$((C%2))
    if [ $m -eq 0 ]
        then 
        d=$((d*-1))
    fi
    s=$( echo "$s+($f/$d)" | bc -l)
done
echo $s