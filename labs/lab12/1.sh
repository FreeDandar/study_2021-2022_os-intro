#!/bin/zsh

function waiting {
  time1=$(date +"%s")
  time2=$(date +"%s")
  ((time_diff = time2 - time1))

  while ((time_diff < $1)); do
    echo "Waiting"
    sleep 1
    time2=$(date +"%s")
    ((time_diff = time2 - time1))
  done
}

function execution {
  time1=$(date +"%s")
  time2=$(date +"%s")
  ((time_diff = time2 - time1))

  while ((time_diff < $2)); do

    echo "Executing"
    sleep 1
    time2=$(date +"%s")
    ((time_diff = time2 - time1))
  done
}

command=$3

while true; do
  if [[ "$command" == "Exit" ]]; then
    exit;
  elif [[ "$command" == "Waiting" ]]; then
    waiting "$@"
  elif [[ "$command" == "Executing" ]]; then
    execution "$@"
  fi
  echo -n "Next action:"
  read -r command
done
