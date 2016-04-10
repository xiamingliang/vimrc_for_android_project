#!/bin/sh
#[ $# -eq 7 ] || exit 0 
# Configure your favorite diff program here.
DIFF="/Applications/Beyond Compare.app/Contents/MacOS/bcomp"

LEFT=${2}
RIGHT=${5}

"$DIFF" "$LEFT"  "$RIGHT"
