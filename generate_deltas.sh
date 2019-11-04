#!/bin/bash

[[ $# -eq 2 ]] || exit 1

for device in taimen walleye crosshatch blueline bonito sargo; do
  for old in $2; do
    script/generate_delta.sh $device $old $1
  done
done
