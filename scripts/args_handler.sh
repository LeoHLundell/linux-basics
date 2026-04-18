#!/bin/bash

if [ $# -eq 0 ]; then
  echo "You forgot to add an argument!"
  exit 1
fi

echo "Script name: $0"
echo "First argument: $1"
echo "Second argument: $2"

if [ "$#" -gt 2 ]; then
   echo "Number of arguments: $#"
   echo "All arguments (separately):"
for arg in "$@"; do
  echo "$arg"

done
fi
