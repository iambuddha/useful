#!/usr/bin/env bash

STATUS=0

if [ -z $1 ]
then
  echo please supply a PID
  exit 1
fi


echo "Watching PID = $1"

while [ $STATUS -eq 0 ]
do
  ps $1 > /dev/null
  STATUS=$?
done

echo "Rrocess $1 has terminated"
exit 0

