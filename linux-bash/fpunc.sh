#!/usr/bin/env bash

function GetFiles() {
  FILES=`ls -1 | head -10`
}

function ShowFiles() {
  COUNT=1
  for NAME in $@
  do
    echo "file #$COUNT $NAME"
    ((COUNT++))
  done
}

GetFiles
ShowFiles $FILES

