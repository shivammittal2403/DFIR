Get-AuditPolicy
Set-AuditPolicy -Category "Logon/Logoff" -IncludeSuccess -IncludeFailure
Get-WinEvent -ListLog * | Format-Table -Property LogName, MaximumSizeInBytes, IsEnabled
Limit-EventLog -LogName Security -MaximumSize 4GB