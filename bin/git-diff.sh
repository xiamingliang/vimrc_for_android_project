#!/bin/sh
#[ $# -eq 7 ] || exit 0 
# Configure your favorite diff program here.
DIFF="bcompare"

LEFT=${2}
RIGHT=${5}

"$DIFF" "$LEFT"  "$RIGHT"
