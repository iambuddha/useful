#!/usr/bin/env bash

STATUS=0
PID_NAME=$1

PID=`ps -a | grep $PID_NAME | awk '{print $1}'`
echo $PID

if [ -z $PID ]
then
  echo no sleep process running
fi

echo whatching process $PID

while [ $STATUS -eq 0 ]
do
  ps $PID > /dev/null
  STATUS=$?
done

echo Process $PID was terminated
exit 0


