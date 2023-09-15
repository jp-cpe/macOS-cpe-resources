#!/bin/bash

FWPassCheck=$(/usr/sbin/firmwarepasswd -check)

if [[ "$FWPassCheck" =~ "Yes" ]]; then
  echo "<result>Set</result>"
elif [[ "$FWPassCheck" =~ "No" ]]; then
  echo "<result>Not Set</result>"
fi

exit 0
