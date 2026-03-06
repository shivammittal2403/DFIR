Get-WinEvent -LogName Security | Export-Csv -Path C:\IR\security.csv
Get-ChildItem -Recurse C:\Users\*\AppData\Roaming\Microsoft\Windows\Recent\ | Export-Csv C:\IR\recent.csv
Get-ChildItem -Recurse C:\Users\*\NTUSER.DAT* | Copy-Item -Destination C:\IR\
Get-Content -Path C:\Windows\Prefetch\*.pf | Select-String -Pattern "MALWARE"