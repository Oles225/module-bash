#!/bin/bash

file=$1
if [ $# -eq 0 ] || [ $# -gt 1 ]; then
    echo "Too many(few) arguments" && exit 1
fi
if ! [ -f "$file" ]; then
    echo "Error.." && exit 1
fi
vals=([0]="zeroes,"  [1]="ones," [2]="twoes," [3]="threes," [4]="fours," [5]="fives," [6]="sixs," [7]="sevens," [8]="eights," [9]="nines")
res=""
for i in {0..9}; do
    res="$res$(grep -o "$i"  "$1" | wc -w) ${vals[$i]} "
done
echo "$res"
