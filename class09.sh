#!/bin/bash

# Script Name:                  Ops Challenge Class 09
# Author:                       Becca
# Date of latest revision:      03/01/2024
# Purpose:                      

# I don't see the ‘Run Selection’ option in PowerShell ISE.
# I'm not fully sure if I did this lab correctly, I tried to follow along with the resource given. 


# Main

# Lists of event logs that are available on the local computer:
Get-EventLog -List
# Gets recent entries from the System event log:
Get-EventLog -LogName System -Newest 5
# Finds all of the sources that are included in the 500 most recent entries in the System event log:
$Events = Get-EventLog -LogName System -Newest 500
$Events | Group-Object -Property Source -NoElement | Sort-Object -Property Count -Descending
# Gets error events from the System event log:
Get-EventLog -LogName System -EntryType Error
# Gets events from the System log for a specific InstanceId and Source:
Get-EventLog -LogName System -InstanceId 10016 -Source DCOM
# Gets the events from the System event log on three computers: Server01, Server02, and Server03:
Get-EventLog -LogName System -ComputerName Server01, Server02, Server03
# Gets all the events in the System event log that contain a specific word in the event's message:
Get-EventLog -LogName System -Message *description*
# Shows how to display all of an event's properties and values:
$A = Get-EventLog -LogName System -Newest 1
$A | Select-Object -Property *
# Gets events for a specified Source and Event ID:
Get-EventLog -LogName Application -Source Outlook | Where-Object {$_.EventID -eq 63} |
              Select-Object -Property Source, EventID, InstanceId, Message
# Gets events and group by a property:
Get-EventLog -LogName System -UserName NT* | Group-Object -Property UserName -NoElement |
              Select-Object -Property Count, Name
# Gets events that occurred during a specific date and time range:
$Begin = Get-Date -Date '1/17/2024 08:00:00'
$End = Get-Date -Date '1/17/2024 17:00:00'
Get-EventLog -LogName System -EntryType Error -After $Begin -Before $End

# End