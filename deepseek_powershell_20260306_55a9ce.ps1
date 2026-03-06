Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Run
Get-ChildItem HKLM:\System\CurrentControlSet\Services
Get-ChildItem -Path HKLM:\Software -Recurse | Where-Object {$_.Name -like "*malware*"}
Remove-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Run -Name "Malware"
New-ItemProperty -Path HKLM:\Software\Microsoft\Windows\CurrentVersion\Run -Name "Legit" -Value "cmd.exe"