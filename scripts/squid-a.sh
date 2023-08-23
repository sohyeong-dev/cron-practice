#!/bin/bash

date

etc_directory="$(dirname "$0")/../etc"

awk -F'[:,]' -v seq="$gameSeq" '$1 == "game"seq {print "no: "$1"\ngame: "$2"\ntime:" $3"\n"}' "$etc_directory"/game-a.rc

awk -F':' -v seq="$gameSeq" '$1 == "game"seq {print (seq > 0) ? "result:" : "init:", $2}' "$etc_directory"/result_game-a.txt
