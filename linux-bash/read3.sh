#!/usr/bin/env bash

COUNT=1

while IFS='' read -r LINE
do
  echo "LINE #$COUNT $LINE"
  ((COUNT++))
  if [ $COUNT -gt 3 ]
  then
    break
  fi
done < "$1"

exit 0

