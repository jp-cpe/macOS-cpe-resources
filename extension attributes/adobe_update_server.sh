#!/bin/sh

updaterConfigFile="/Library/Application Support/Adobe/AAMUpdater/1.0/AdobeUpdater.Overrides"

if [ -f "$updaterConfigFile" ]; then
result=`/bin/cat "$updaterConfigFile" | grep -m 1 "Domain" | sed -e 's/<[^>]*>//g' | sed 's:http\://::g' | awk '{print $1}'`
echo "<result>$result</result>"
else
echo "<result>No Adobe Update Server Set</result>"
fi
	
