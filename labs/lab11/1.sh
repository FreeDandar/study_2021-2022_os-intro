#!/bin/zsh

if [[ $# -lt 1 ]]
then
echo "No options found!"
exit 1
fi

args=()

while getopts "i:o:p:Cn" opt
do
  case $opt in
  i) filename=$OPTARG;;
  o) output=$OPTARG;;
  p) pattern=$OPTARG;;
  C) args+=(-i);;
  n) args+=(-n);;
  *) echo "No valid options found";;
  esac
done

if [[ $output ]]
then
  grep "${args[@]}" "$pattern" "$filename" > "$output";
else
  grep "${args[@]}" "$pattern" "$filename";
fi
