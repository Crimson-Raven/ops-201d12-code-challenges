#!/bin/bash

# Script Name:                  Practice
# Author:                       Becca
# Date of latest revision:      02/22/2024
# Purpose:                      

# Declaration of variables


# Declaration of functions

function create_if_not_exists() {
  for dir5; do
    if [[ ! -e "$dir5" ]]; then
      if [[ -d "$dir5" ]]; then
        mkdir -p "$dir5"
      else
        touch "$dir5"
      fi
      echo "Created path: $dir5"
    fi
  done
}

create_if_not_exists "${dir5[@]}"
# Main


# End