#!/bin/bash

# Script Name:                  Class 03 Script 1
# Author:                       Becca
# Date of latest revision:      02/21/2024
# Purpose:                      

# Declaration of variables

num1=36
num2=124

# Declaration of functions

add_two_numbers() {
    sum=$(($num1 + $num2))
    echo $sum
}

# Main

add_two_numbers

# End