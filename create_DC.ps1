# Create Windows Domain Controller Quickly

# Part 1

Rename-computer -newname $computerName

$ipaddress = "10.0.0.2"
$dnsaddress = "127.0.0.1"
New-NetIPAddress -InterfaceAlias Ethernet -IPAddress $ipaddress -AddressFamily IPv4 -PrefixLength 24

Set-DnsClientServerAddress -InterfaceAlias Ethernet -ServerAddresses $dnsaddress
Set-TimeZone -Id "Eastern Standard Time"
Restart-Computer

# Part 2

Install-WindowsFeature AD-Domain-Services -IncludeManagementTools

Install-ADDSForest
-CreateDnsDelegation:$false
-DatabasePath “C:\Windows\NTDS”
-DomainName “yourdomain.com”
-DomainNetbiosName “YOURDOMAIN”
-InstallDns:$true
-LogPath “C:\Windows\NTDS”
-NoRebootOnCompletion:$false
-SysvolPath “C:\Windows\SYSVOL”
-Force:$true
