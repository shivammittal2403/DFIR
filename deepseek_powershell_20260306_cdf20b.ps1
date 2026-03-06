Get-NetTCPConnection
Get-NetTCPConnection -State Established
Get-NetTCPConnection -LocalPort 445
Get-NetUDPEndpoint
Get-NetRoute
Get-DnsClientCache
Resolve-DnsName suspicious.com
Test-NetConnection 1.1.1.1 -Port 53
Test-NetConnection -ComputerName evil.com -InformationLevel Detailed