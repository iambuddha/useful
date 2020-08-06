#!/usr/bin/env bash

count=0

while [ $count -le 10 ]
do
  echo count equals $count
  ((count++))
done


echo while loop finished
exit 0

