#!/bin/bash

if [ -f $(dirname "$0")/sequencerc ]; then
  source $(dirname "$0")/sequencerc
fi

if [ -n "$sequence" ] && [ $sequence -gt 6 ]; then
  sequence=0
fi

echo "export sequence=$(( sequence + 1 ))" > "$(dirname "$0")/sequencerc"

$(dirname "$0")/scripts/frontman-new.sh -g $sequence
