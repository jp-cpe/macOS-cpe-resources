#!/bin/bash

# Find the Wi-Fi device interface (e.g., en0, en1)
wifi_device=$(networksetup -listallhardwareports | awk '/Hardware Port: Wi-Fi|Airport/{getline; print $2}')

# Check if the Wi-Fi device was successfully identified
if [ -n "$wifi_device" ]; then
  # Obtain the Wi-Fi status for the identified device
  power_status=$(networksetup -getairportpower $wifi_device)
  wifi_name=$(networksetup -getairportnetwork $wifi_device | awk -F': ' '{print $2}')
    if [[ "$power_status" == *"Off"* ]]; then
    wifi_name="Off"
	fi
else
    wifi_name="No WiFi Device Identified by Networksetup"
fi

# Output the Wi-Fi status for Jamf Pro
echo "<result>$wifi_name</result>"

exit 0
