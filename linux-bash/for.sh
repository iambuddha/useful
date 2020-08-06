#!/usr/bin/env bash

names=$@

for name in $names
do
  if [ $name = "John" ]
  then
    continue
  fi
  echo "Hello $name"
done


echo for loop termianted
exit 0

