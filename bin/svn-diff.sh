#!/bin/sh

# Configure your favorite diff program here.
SYSTEM_APP="/Applications/Beyond Compare.app/Contents/MacOS/bcomp"
USER_APP="${HOME}${SYSTEM_APP}"

if [ -f "${USER_APP}" ]; then
    DIFF="${USER_APP}";
else
    DIFF="${SYSTEM_APP}";
fi

# Subversion provides the paths we need as the sixth and seventh 
# parameters.
LEFT=${6}
RIGHT=${7}

# Call the diff command (change the following line to make sense for
# your merge program).
"$DIFF" "$LEFT"  "$RIGHT"

# Return an errorcode of 0 if no differences were detected, 1 if some were.
# Any other errorcode will be treated as fatal.
