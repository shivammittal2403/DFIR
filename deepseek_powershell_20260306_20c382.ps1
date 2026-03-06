Enter-PSSession -ComputerName computer
Invoke-Command -ComputerName computer -ScriptBlock { Get-Process }
Invoke-Command -ComputerName computer,computer2 -FilePath script.ps1
Get-WmiObject -Class Win32_Process -ComputerName computer
Get-CimInstance -ClassName Win32_Process -ComputerName computer
Test-WSMan computer                           # Test WinRM