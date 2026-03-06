Get-Service
Get-Service -Name *mal*
Get-Service | Where-Object {$_.Status -eq 'Running'}
Get-CimInstance -ClassName Win32_Service -Filter "Name='ServiceName'"
Get-CimInstance Win32_Service | Select Name, PathName, StartMode, ProcessId
Stop-Service -Name ServiceName -Force
Set-Service -Name ServiceName -StartupType Disabled