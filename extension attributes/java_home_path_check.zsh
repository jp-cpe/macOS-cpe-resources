#!/bin/zsh

# Run /usr/libexec/java_home and capture the result in the "java_home_path" variable
java_home_path=$(/usr/libexec/java_home 2>&1)

# Check if the output contains the phrase "Unable to locate a Java Runtime."
if [[ "$java_home_path" == *"Unable to locate a Java Runtime."* ]]; then
    result="Unable to locate a Java Runtime"
else
    result="$java_home_path"
fi

# Print the result
echo "<result>$result</result>"

exit 0
