#!/bin/zsh

this_filename=$(basename "$0")

tar czvf ~/backup/"${this_filename}.tar.gz" "${this_filename}"
