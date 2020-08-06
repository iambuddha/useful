#!/usr/bin/env bash

count=$1
n=0
if [ $count -gt 0 ]
then
  while [ $n -lt $count ]
  do
    echo number is $n
    ((n++))
  done
fi

echo "loop finished"
exit 0
