Get-Process
Get-Process | Where-Object {$_.CPU -gt 50}          # High CPU processes
Get-Process | Export-Csv processes.csv
Get-Process -Name *mal*                              # Wildcard search
Get-Process -Id 1234 | Stop-Process -Force
Get-Process | Select Name, Id, Path, Company
Get-CimInstance Win32_Process | Select Name, ProcessId, ParentProcessId, CommandLine
Get-CimInstance Win32_Process -Filter "Name='cmd.exe'" | Select *