#!/bin/bash

# Script Name:                  Ops Challenge Class 05
# Author:                       Becca
# Date of latest revision:      02/24/2024
# Purpose:                      

# Display running processes

show_processes() {
    echo "Display running processes:"
    top -n 1
}
# Main
while true; do
    echo "Enter PID to kill (to exit press Ctrl + C):"
    read PID
    kill $PID

    echo "Press Ctrl + C to exit"
    read -n 1
done

# End