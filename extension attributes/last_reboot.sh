#!/bin/bash

lastReboot=`last reboot | head -1 | awk '{print $3, $4, $5, $6}'`

echo "<result>$lastReboot</result>"

exit 0
