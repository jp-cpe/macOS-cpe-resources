#!/bin/sh

# Default result to "Not Installed"
swift_dialog="Not Installed"

# Check for Swift Dialog
if [ -f "/usr/local/bin/dialog" ]; then 
    swift_dialog="Installed"
fi

echo "<result>$swift_dialog</result>"

exit 0
