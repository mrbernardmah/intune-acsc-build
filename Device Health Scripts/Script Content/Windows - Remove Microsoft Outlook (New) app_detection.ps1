<#
Version: 1.0
Author: Bernard Mah Quorum Systems
Script: Detect-OutlookNew
Description: Script detects the new Microsoft Outlook app on Windows 11 23H2.
Version 1.0: Init
Run this script using the logged-on credentials: Yes
Enforce script signature check: No
Run script in 64-bit PowerShell: Yes
#> 

if (Get-AppxPackage -Name *OutlookForWindows*) {
write-host "Microsoft Outlook (New) found."

exit 1
}

else {
write-host "Microsoft Outlook (New) not found."

exit 0
}

