#!/bin/bash

days=`uptime | awk '{ print $4 }' | sed 's/,//g'`
num=`uptime | awk '{ print $3 }'`

# Check if more than a day
if [ $days = "days" ];
then
	# More than a day, return the number of days
	echo "<result>$num</result>"
else
	# Less than a day return 1
	echo "<result>1</result>"
fi
