#!/bin/bash

# Get the logged-in user
get_logged_in_user() {
    stat -f%Su /dev/console
}

# Check if OneDrive is running
is_onedrive_running() {
    pgrep -x "OneDrive" > /dev/null
    return $?
}

# Check if OneDrive is configured for the user
is_onedrive_configured() {
    loggedInUser=$(get_logged_in_user)
    onedrive_config_dir="/Users/$loggedInUser/Library/CloudStorage/OneDrive-*/"
    
    if ls $onedrive_config_dir 1> /dev/null 2>&1; then
        echo "true"
    else
        echo "false"
    fi
}

# Main script
if is_onedrive_running; then
    echo "<result>OneDrive Running and "
    if [ "$(is_onedrive_configured)" == "true" ]; then
        echo "User is Signed In</result>"
    else
        echo "User is Not Signed In</result>"
    fi
else
    if [ "$(is_onedrive_configured)" == "true" ]; then
        echo "<result>OneDrive Not Running, but User Previously Signed In</result>"
    else
        echo "<result>OneDrive Not Running and User Has Never Signed In</result>"
    fi
fi

exit 0
