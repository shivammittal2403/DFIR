Get-WinEvent -LogName Security -MaxEvents 1000
Get-WinEvent -FilterHashtable @{LogName='Security'; ID=4624,4625}
Get-WinEvent -FilterHashtable @{LogName='System'; ProviderName='Microsoft-Windows-WinRM'}
Get-WinEvent -FilterXPath "*[System[EventID=4688]]" -LogName Security          # Process creation
Get-WinEvent -FilterHashtable @{LogName='Microsoft-Windows-Sysmon/Operational'; ID=1}  # Sysmon process
Get-WinEvent -FilterHashtable @{LogName='Microsoft-Windows-Sysmon/Operational'; ID=3}  # Sysmon network
Get-WinEvent -FilterHashtable @{LogName='Security'; StartTime=(Get-Date).AddHours(-24)}
Get-WinEvent -FilterHashtable @{LogName='Security'; Data='admin'}
Get-WinEvent -FilterHashtable @{LogName='Application'; Keywords=9007199254740992} # Errors