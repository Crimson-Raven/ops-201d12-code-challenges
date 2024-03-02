#!/bin/bash

# Script Name:                  Ops Challenge Class 08
# Author:                       Becca
# Date of latest revision:      03/02/2024
# Purpose:                      

@echo off

md "labs"
md "labs\data_restoration"
md "labs\cloud_virtualization"
md "labs\malware_remediation"

md "challenges"
md "challenges\bash_domain_analyzer"
md "challenges\powershell_IP_analysis"
md "challenges\automated_endpoint_config"

md "notes"
echo. > "notes\imaging_backup_recovery.txt"
echo. > "notes\workstation_deployment_SOP.txt"
echo. > "notes\system_log_analysis.txt"

echo Folder structure and files created successfully!

pause



# Main
 

# End


# Notes
# @echo off: Hides the execution commands from the command line output.
# md: Creates directories with the specified paths.
# Each md command creates a single directory.
# echo. >: Creates empty files named after the file path.
# > redirects the output of echo., which is an empty string, to the specified file path, effectively creating an empty file.
# echo Folder structure and files created successfully!: Displays a success message after creation.
# pause: Pauses the command window until a key is pressed.