# Script Name:                  Ops Challenge Class 10
# Author:                       Becca
# Date of latest revision:      03/01/2024
# Purpose:                      Write a set of Powershell commands that fetch info about running processes, open processes, and close processes.
Include language appropriate syntax and file extensions.


# Main

#Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.

@echo off
tasklist /sort:cpu /fo csv /nh > processes.csv
type processes.csv | sort /r > sorted_by_cpu.txt
del processes.csv
type sorted_by_cpu.txt
pause

#Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.

@echo off
tasklist /sort:pid /fo csv /nh > processes.csv
type processes.csv | sort /n > sorted_by_pid.txt
del processes.csv
type sorted_by_pid.txt
pause

#Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.

@echo off
tasklist /sort:workingset /fo csv /nh | head /lines:5 > top_by_ws.txt
type top_by_ws.txt
pause

#Start a browser process (such as Google Chrome or MS Edge) and have it open https://owasp.org/www-project-top-ten/.

@echo off
start "chrome" https://owasp.org/www-project-top-ten/
pause

#Start the process Notepad ten times using a for loop.

@echo off
for /L %%i in (1,1,10) do start notepad.exe
pause

#Close all instances of the Notepad.

@echo off
taskkill /f /im notepad.exe
pause

#Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Google Chrome or MS Edge.

@echo off
taskkill /f /pid 12345
pause

# End

# Notes:

Fetch information about running processes: Get-Process | Format-Table -AutoSize
Open a specific process: Start-Process notepad.exe
Close a running process: Stop-Process -Name chrome.exe -Force
@echo off: Hides the echo of each command.
tasklist /sort:cpu /fo csv /nh: Lists processes, sorts by CPU usage, formats output as CSV, and omits header.
> processes.csv: Redirects output to a temporary CSV file.
type processes.csv | sort /r > sorted_by_cpu.txt: Reads the CSV file, sorts lines in reverse order (highest CPU first), and writes the result to another file.
del processes.csv: Deletes the temporary CSV file.
type sorted_by_cpu.txt: Displays the sorted process list.
pause: Waits for user input before closing the command window.
head /lines:5: Selects and displays the first 5 lines of the sorted list (top 5 processes).
/L %%i in (start,stop,step): Defines a loop variable (%%i) that iterates from start to stop in steps of step. Here, it iterates 10 times (1 to 10 with a step of 1).
/f: Forces termination of processes.
To kill a process with PID: Replace 12345 with the actual PID of a non-critical process like a web browser.