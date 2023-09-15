#!/bin/sh

# Returns the status of PolicyBanner.rtfd in /Library/Security/
policyBannerStatus="Not Installed"

if [ -d "/Library/Security/PolicyBanner.rtfd" ] ; then
	policyBannerStatus="Installed"
fi

echo "<result>$policyBannerStatus</result>"

exit 0
