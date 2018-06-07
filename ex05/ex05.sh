#!/bin/bash

sum=0;
cnt=0;

flag=$1

shift

re='^-?[0-9]+([.][0-9]+)?$'
for i in $@; do
if ! [[ $i =~ $re ]] ; then
   echo "Error.."; exit 1
fi
done

case $flag in
  -s)
    for i in $@
    do
      (( sum += $i ))
    done
    echo "$sum";;
  -e)
    for i in $@
    do
      if !(($i % 2)); then
        (( sum += $i ))
      fi
    done
    echo "$sum";;
  -o)
    for i in $@
    do
      if (($i % 2)); then
        (( sum += $i ))
      fi
    done
    echo "$sum";;
  -m)
    for i in $@; do
      (( sum += $i )) && (( cnt++ ))
    done
    echo "$(($sum/$cnt))";;
  *)
  echo "Error..";;
esac
