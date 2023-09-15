#!/bin/sh
domainStatus=$(dsconfigad -show | awk '/Active Directory Domain/{print $NF}')

echo "<result>$domainStatus</result>"
exit 0
