Get-CimInstance Win32_StartupCommand | Select Name, Command, Location
Get-ItemProperty HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run*
Get-ItemProperty HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run*
Get-ItemProperty HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows\AppInit_DLLs
Get-ScheduledTask | Where-Object {$_.Settings.AllowDemandStart -eq $true}
Get-WmiObject -Namespace root\subscription -Class __EventFilter          # WMI persistence
Get-WmiObject -Namespace root\subscription -Class __EventConsumer
Get-WmiObject -Namespace root\subscription -Class __FilterToConsumerBinding