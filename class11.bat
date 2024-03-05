# Script Name:                  Ops Challenge Class 11
# Author:                       Becca
# Date of latest revision:      03/04/2024
# Purpose:        


# I got this from chatgbt after trying to figure it out on my own for about an hour.

# Enable File and Printer Sharing
Enable-NetAdapterSharing -Name * -AllowFileSharing -AllowPrinterSharing

# Allow ICMP traffic (ping)
Set-NetFirewallRule -Name "Allow ICMPv4-In" -Enabled True
Set-NetFirewallRule -Name "Allow ICMPv6-In" -Enabled True

# Enable Remote Management (WinRM)
Enable-WmiRemoteAccess -Force

# Remove Bloatware (**Caution: Use with discretion and research beforehand!**)
# This section requires manual modification to specify desired bloatware removal

# Example: Remove calculator app
# Get-AppxPackage -Name *calculator* | Remove-AppxPackage

# Enable Hyper-V (if available and desired)
if (Get-WindowsFeature -Name Hyper-V -ErrorAction SilentlyContinue) {
  Enable-WindowsFeature -Name Hyper-V
} else {
  Write-Warning "Hyper-V is not available on this system."
}

# Disable SMBv1
Disable-Smbv1Client -ErrorAction SilentlyContinue
Disable-Smbv1Server -ErrorAction SilentlyContinue

Write-Host "Script completed!"