#!/usr/bin/env bash

DELAY=$1

if [ -z $DELAY ]
then
  echo "you must define the delay"
  exit 1
fi

echo going to sleep for $DELAY seconds
sleep $DELAY
echo we are awake

