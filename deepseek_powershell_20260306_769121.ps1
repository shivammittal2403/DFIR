Get-ChildItem -Recurse -Force -ErrorAction SilentlyContinue | Where-Object {$_.Extension -eq ".exe"}
Get-ChildItem -Recurse -Hidden
Get-FileHash file.exe -Algorithm SHA256
Get-Content suspicious.log -Tail 100
Get-Content eventlog.evtx | Select-String -Pattern "malware"
Get-ChildItem -Recurse | Get-Acl | Format-List
Get-ChildItem | Where-Object {$_.CreationTime -gt (Get-Date).AddDays(-1)}
Get-ChildItem -Recurse | Where-Object {$_.Length -gt 100MB}          # Large files
Remove-Item malware.exe -Force
Copy-Item -Path C:\source -Destination \\remote\share -Recurse