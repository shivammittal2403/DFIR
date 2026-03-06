Get-ComputerInfo
Get-HotFix | Where-Object {$_.InstalledOn -gt (Get-Date).AddMonths(-1)}
Get-ItemProperty HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\* | Select DisplayName
Get-WmiObject Win32_QuickFixEngineering
Get-WmiObject Win32_StartupCommand
Get-WmiObject Win32_Product      – Installed apps
Get-WmiObject Win32_BIOS
Get-WmiObject Win32_NetworkAdapterConfiguration | Where-Object {$_.IPEnabled -eq $true}
Get-WmiObject Win32_LoggedOnUser
Get-Process -IncludeUserName | Select UserName, ProcessName   # requires admin
Get-ExecutionPolicy              – PowerShell execution policy
Set-ExecutionPolicy Restricted    – Lock down