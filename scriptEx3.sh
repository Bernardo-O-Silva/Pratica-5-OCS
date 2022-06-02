#!/bin/bash

read a b c
d=$(((a*a)+(b*b)+(c*c))) 
echo "scale=2;sqrt($d)" |bc -l