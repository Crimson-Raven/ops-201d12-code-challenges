#!/bin/bash

# Script Name:                  Ops Challenge Class 13
# Author:                       Becca
# Date of latest revision:      03/06/2024
# Purpose:                      Create a script that asks a user to type a domain, then displays information about the typed domain.
#                               Operations that must be used include: whois, dig, host, nslookup

sudo apt install whois

function lookup_domain() {
  # Read user input
  read -p "Enter domain name: " domain

  # Run whois, dig, host, and nslookup commands
  whois $domain
  echo "----------"
  dig $domain
  echo "----------"
  host $domain
  echo "----------"
  nslookup $domain
}

#Lookup domain information:
lookup_domain

# Run the script:
bash your_script_name.sh

# End

# Notes:
# This code defines a function named lookup_domain which:
# Prompts the user to enter a domain name using read.
# Runs the whois, dig, host, and nslookup commands on the provided domain name.
# Uses echo "----------" to separate the output of each command for better readability.