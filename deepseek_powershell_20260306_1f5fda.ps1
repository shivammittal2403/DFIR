Get-NetFirewallRule | Where-Object {$_.Enabled -eq $true}
Get-NetFirewallRule -DisplayGroup "Remote Desktop"
New-NetFirewallRule -DisplayName "Block Outbound" -Direction Outbound -Action Block -RemoteAddress 10.10.10.10
Disable-NetAdapter -Name Ethernet -Confirm:$false
Get-NetIPConfiguration
Set-DnsClientServerAddress -InterfaceIndex 12 -ServerAddresses 1.1.1.1
Get-NetNeighbor           # ARP cache