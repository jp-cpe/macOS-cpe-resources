#!/bin/sh

targusMACAddress=`networksetup -listallhardwareports | awk -v target="Targus USB3 DV4K DOCK w PD100W" -F': ' '$2==target{getline;getline; print $2}'`

echo "<result>$targusMACAddress</result>"
exit 0
