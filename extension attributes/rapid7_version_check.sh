#!/bin/sh

# Returns the version of Rapid7 installed - null if not installed
rapidversion=$(grep "Agent Info" /opt/rapid7/ir_agent/components/insight_agent/common/agent.log | tail -n1 | tr ' ' '
' | awk '/Version:/{getline; print}')
echo "<result>$rapidversion</result>"
exit 0
