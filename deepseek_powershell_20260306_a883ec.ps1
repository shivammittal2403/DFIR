Get-LocalUser
Get-LocalGroupMember -Group Administrators
Disable-LocalUser -Name "username"
Remove-LocalUser -Name "username"
Get-ADUser -Filter * -Properties LastLogonDate      # domain
Get-ADGroupMember -Identity "Domain Admins"
Get-WmiObject -Class Win32_UserAccount -Filter "LocalAccount=True"