#!/bin/bash

a=$1
shift

for i in "$@"; do 
    eval "$a" "$i" 
done
