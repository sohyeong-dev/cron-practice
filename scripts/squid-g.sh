#!/bin/bash

date

etc_directory="$(dirname "$0")/../etc"

cat "$etc_directory"/game.rc | grep game$gameSeq
cat "$etc_directory"/result_game.txt | grep game$gameSeq
