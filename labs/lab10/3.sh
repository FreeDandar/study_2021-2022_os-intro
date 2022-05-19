#!/bin/zsh

for file in "$1"/*
do
  echo -n "$file "
  if test -w "$file"
  then echo -n "writeable "
  fi
  if test -r "$file"
  then echo -n "readable "
  else echo -n "neither readable nor writeable "
  fi
  echo ""
done