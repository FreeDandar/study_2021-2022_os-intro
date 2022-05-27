#!/bin/zsh

COUNT=0
ENG_LETTERS=26
LENGTH=8
STRING=""

for ((i=1; i<LENGTH; i++)); do
  POS=$((1 + RANDOM % ENG_LETTERS))
  ((COUNT=0))
  for letter in {a..z}; do
    if [[ $COUNT -eq $POS ]]; then
      STRING+=$letter;
      break;
    else
      ((COUNT+=1));
    fi
  done
done

echo "$STRING"
