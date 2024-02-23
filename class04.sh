#!/bin/bash

# Script Name:                  Warmup Script 1
# Author:                       Becca
# Date of latest revision:      02/22       /2024
# Purpose:                      

# Declaration of variables

directories=("dir1" "dir2" "dir3" "dir4")


# Declaration of functions

for i in "${directories[@]}" 
do
    mkdir "$i" 
    touch "$i/$i"textfile.txt""
done
#
# Main



# End