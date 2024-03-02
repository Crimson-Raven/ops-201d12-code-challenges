#!/bin/bash

# Script Name:                  Ops Challenge Class 07
# Author:                       Becca
# Date of latest revision:      03/02/2024
# Purpose:                      Create a script that uses lshw to display system information to the screen about the following components:

# Check for root privileges
if [[ $EUID -ne 0 ]]; then
  echo "This script requires root privileges. Please run it with sudo."
  exit 1
fi

# Command to be executed with root privileges
command_to_run

# Define components and keywords separated by semicolons
components=(
  "Name of the computer: system serial"
  "CPU: product; physical id; width"
  "RAM: description; physical id; size"
  "Display adapter: description; product; physical id; width;clock; capabilities; configuration"
  "Network adapter: description; product; physical id; logical name; version; serial; size; capacity; width; configuration"
)

# Display information for each component
for component in "${components[@]}"; do
  name_keyword=$(echo "$component" | cut -d -f 1)
  info_keywords=$(echo "$component" | cut -d -f 2- | sed )

  echo "*$name_keyword*"
  lshw | grep -E "^($info_keywords)"
done

exit 0

# End