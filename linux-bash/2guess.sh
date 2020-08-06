#!/usr/bin/env bash

COMPUTER=22
VALID=0
GUESS_VALID=0

while [ $GUESS_VALID -eq 0 ]
do
  read -p "Guess the number from 0 to 50: " GUESS
  while [ $VALID -eq 0 ]
  do
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

  if
    [[ $GUESS -lt $COMPUTER ]]
  then
    echo "go for more"
    continue
  elif
    [[ $GUESS -gt $COMPUTER ]]
  then
    echo "go for less"
    continue
  fi
  GUESS_VALID=1
done

echo "YES, the answer is $COMPUTER"

