#!/usr/bin/env bash

names=$@

for name in $names
do
  if [ $name = "Andrius" ]
  then
    continue
  fi
  echo "Hello $name"
done


echo for loop termianted
exit 0

