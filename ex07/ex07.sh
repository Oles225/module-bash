#!/bin/bash

file="resourses/surnames.txt"
arg=$1

if ! [[ $arg ]] || [[ "$arg" = "0" ]]; then
    exit 1
fi

head -$arg $file  | grep -v Q-Chem | sed "s/[-.]//g" | sed "s/,/\\n/g"
