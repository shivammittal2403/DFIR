Get-Process | ForEach-Object { $_.Modules }               # Enumerate modules
Get-Process -Id 1234 | Select -ExpandProperty Modules
Get-CimInstance Win32_Process -Filter "Name='malware.exe'" | Get-CimAssociatedInstance -ResultClassName Win32_ProcessStartup
Get-CimInstance Win32_Process -Filter "Name='lsass.exe'" | Invoke-CimMethod -MethodName GetOwner
Get-WmiObject Win32_Process -Filter "Name='svchost.exe'" | Get-WmiObject -Class Win32_Service -Filter "ProcessId=$_.ProcessId"
(Get-Process -Id 1234).Threads    # Threads