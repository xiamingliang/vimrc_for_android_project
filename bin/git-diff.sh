#!/bin/sh
#[ $# -eq 7 ] || exit 0 
# Configure your favorite diff program here.
SYSTEM_APP="/Applications/Beyond Compare.app/Contents/MacOS/bcomp"
USER_APP="${HOME}${SYSTEM_APP}"

if [ -f "${USER_APP}" ]; then
    DIFF="${USER_APP}";
else
    DIFF="${SYSTEM_APP}";
fi

LEFT=${2}
RIGHT=${5}

"$DIFF" "$LEFT"  "$RIGHT"
