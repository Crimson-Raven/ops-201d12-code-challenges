#!/bin/bash

# Script Name:                  Practice
# Author:                       Becca
# Date of latest revision:      02/22/2024
# Purpose:                      

# Declaration of variables


# Declaration of functions

function create_if_not_exists() {

if [ -e "dir5" ]; then
    echo "file exists"
    else
    echo "Create path: dir5"  
done 
}

create_if_not_exists "${dir5[@]}"
# Main


# End