#!/bin/zsh

if [ $# -eq 0 ];
then
  echo "No command name provided";
  exit;
fi

DIR=/usr/share/man/man1
CMD_FILE="$1.1"
FULL_PATH="$DIR/$CMD_FILE"

if [[ -f "$FULL_PATH" ]];
then
  less "$FULL_PATH";
else
  echo "No manual for this command";
fi
