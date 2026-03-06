# Find Mimikatz usage
Get-WinEvent -LogName Security | Where-Object { $_.Message -like "*mimikatz*" }

# Detect PsExec
Get-WinEvent -LogName Security -FilterXPath "*[System[EventID=4688]]" | Where-Object { $_.Properties[5].Value -like "*psexec*" }

# Suspicious WMI
Get-WinEvent -LogName "Microsoft-Windows-WMI-Activity/Operational" | Where-Object { $_.Id -eq 5858 }

# PowerShell download cradle
Get-WinEvent -LogName "Microsoft-Windows-PowerShell/Operational" | Where-Object { $_.Message -like "*System.Net.WebClient*" }

# Unusual service install
Get-WmiObject Win32_Service | Where-Object {$_.PathName -like "*temp*"}

# Check for hidden users
Get-LocalUser | Where-Object {$_.Enabled -eq $true -and $_.PasswordRequired -eq $false}

# List all inbound firewall rules
Get-NetFirewallRule -Direction Inbound | Where-Object Enabled -eq True

# Check scheduled tasks with SYSTEM privileges
Get-ScheduledTask | Get-ScheduledTaskInfo | Where-Object {$_.Author -eq "NT AUTHORITY\SYSTEM"}