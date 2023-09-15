#!/bin/bash

result="No Java Plug-In Available"
javaVendor=`/usr/bin/defaults read /Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Info CFBundleIdentifier`
javaVersion=`/usr/bin/defaults read /Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Info CFBundleVersion`

if [ "$javaVendor" = "com.oracle.java.JavaAppletPlugin" ]; then
    result="Oracle $javaVersion"
elif [ "$javaVendor" = "com.apple.java.JavaAppletPlugin" ]; then
    result="Apple $javaVersion"
elif [ "$javaVendor" = "" ]; then
    result="No Java Plug-In Available"
fi

echo "<result>$result</result>"

exit 0
