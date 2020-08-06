#!/usr/bin/env bash

COMPUTER=22
VALID=0

while [ $VALID -eq 0 ]
do
  read -p "Guess the number from 0 to 50: " GUESS
  if [[ (-z $GUESS) ]]
  then
    echo "you didn't entered anything"
    continue
  elif
    [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo "this is not a digit: $GUESS"
    continue
  fi
  VALID=1
done

while [ ! $GUESS -eq $COMPUTER ]
do
  if
    [[ $GUESS -lt $COMPUTER ]]
  then
    echo "go for more"
    echo guess=$GUESS computer=$COMPUTER
    continue
  elif
    [[ $GUESS -gt $COMPUTER ]]
  then
    echo "go for less"
    echo guess=$GUESS computer=$COMPUTER
    continue
  fi
done
