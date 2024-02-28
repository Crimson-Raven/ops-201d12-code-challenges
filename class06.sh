#!/bin/bash

# Script Name:                  Ops Challenge Class 06
# Author:                       Becca
# Date of latest revision:      02/26/2024
# Purpose:                      Create a script that detects a file/dir, then creates it if it doesn't exist.
#Create a script that detects if a file or directory exists, then creates it if it does not exist.
#Your script must use at least one array, one loop, and one conditional.           

# Array for directories
directory_list=( "dir1" "dir2" "dir3" "dir4")

# Function to check if directory exists on the array
if is_the_directory_in_this_list() {
  search_directory="$1"
  for directory in "${directory_list[@]}"; do
  #print $directory
  if [[ "$directory" == "$search_directory" ]]; then
  return 0
  fi
done
return 1
}

while true; do
read -p "Enter a directory to see if it exists in this system (or type "Done" to finish)" directory_to_check
# Check if a users input is "Done"
if [ "$directory_to_check" = "Done" ]; then
break
fi

if is_the_directory_in_this_list "$directory_to_check"; then
  echo "Directory '$directory_to_check' already exists."
else
  read -p "'$directory_to_check' does not exist, do you want to add it? (yes/no)" add_items
  if ["$add_items" = "yes" ]; then
  directory_list+=("$directory_to_check")
  echo "'$directory_to_check' added to directories"
  else
  echo "'$directory_to_check' has not been added to directories"
  fi
fi

done

read -p "Do you want to see your completed directory list? (yes/no)" Show_list
if [ "$show_list" = "yes" ]; then
  echo "Your completed directory list: "
  echo "${directory_list[@]}"
else
echo "I see how it is. Ask me later."
fi

done 