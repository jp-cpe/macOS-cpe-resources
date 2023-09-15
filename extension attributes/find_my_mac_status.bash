#!/bin/bash

enabled=`/usr/sbin/nvram -x -p | /usr/bin/grep fmm-mobileme-token-FMM`

if [[ $enabled ]]; then
    echo "<result>$enabled</result>"
else
    echo "<result>Not Enabled</result>"
fi
