#!/usr/bin/env bash

function Hello() {
  local LNAME=$1
  echo "hello there $LNAME"
}

Goodbye() {
  echo "Goodbye here $1"
}

echo "Calling the hello function "
Hello Bob

echo "Calling the goodbye function "
Goodbye Robert

exit 0
