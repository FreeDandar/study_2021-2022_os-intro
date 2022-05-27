#!/bin/zsh

./2c
output=$?;
if [ $output -eq 0 ]; then
  echo "Число равно нулю";
elif [ $output -eq 2 ]; then
  echo "Число меньше нуля";
elif [ $output -eq 1 ]; then
  echo "Число больше нуля";
fi