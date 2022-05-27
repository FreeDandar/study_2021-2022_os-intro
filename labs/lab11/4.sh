#!/bin/zsh

find "$1" -type f -d 1 -mtime -168h | tar czvf archive.tar.gz -T -