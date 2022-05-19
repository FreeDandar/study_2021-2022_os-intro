#!/bin/zsh

PATH="$1"
EXTENSION="$2"

((amount = 0))

for file in "$PATH"/*
do
  if [[ $file == *"$EXTENSION" ]]
  then amount=$amount+1;
  fi
done
echo $amount