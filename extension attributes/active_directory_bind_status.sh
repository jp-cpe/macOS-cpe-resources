#!/bin/sh
domainStatus=$(dsconfigad -show | awk '/Active Directory Domain/{print $NF}')

if [ -z "$domainStatus" ]; then
    echo "<result>No AD Bind Exists</result>"
else
    echo "<result>$domainStatus</result>"
fi

exit 0
