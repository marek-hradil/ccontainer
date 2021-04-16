#!/bin/sh

inotifywait -q -m -e close_write main.c |
while read -r filename event; do
  clang -o main.out main.c
  ./main.out
done
