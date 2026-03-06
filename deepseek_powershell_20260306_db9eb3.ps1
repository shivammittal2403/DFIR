Get-Item -Path file -Stream *
Get-Content -Path file -Stream hidden
Remove-Item -Path file -Stream hidden
Set-Content -Path file -Stream ads -Value "malicious"