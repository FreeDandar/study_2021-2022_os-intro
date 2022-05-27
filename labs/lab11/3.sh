#!/bin/zsh

subcommand=$1
case $subcommand in
create) if [ $# -ne 2 ]; then echo "No number provided"; fi; for ((i=1;i<=$2;i++)); do touch "$i.tmp"; done;;
#delete) ls | grep -P "^[0-9]+\.tmp$" | xargs -d"\n" rm;;
delete) rm -i [0-9]*\.tmp;;
*) echo "No valid command specified";;
esac
