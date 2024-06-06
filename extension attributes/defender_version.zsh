#!/bin/zsh

defender_version=$(defaults read "/Applications/Microsoft Defender.app/Contents/Info.plist" CFBundleVersion)

echo "<result>$defender_version</result>"
