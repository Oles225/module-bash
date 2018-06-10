#!/bin/bash

if ! [ -f "$1" ]; then
    exit 1
fi

while [ $# -gt 0 ]
do
    echo "$(awk 'END { print NR }' "$1")" "$1"
    shift
done
