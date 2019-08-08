# Create Windows Domain Controller Quickly
# Reference 1: https://cloudblogs.microsoft.com/industry-blog/en-gb/cross-industry/2016/06/08/setting-up-active-directory-via-powershell/
# Reference 2: https://blogs.technet.microsoft.com/chadcox/2016/10/25/chads-quick-notes-installing-a-domain-controller-with-server-2016-core/

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

# Part 3
# Make sure AD/DNS services are running
Get-Service adws,kdc,netlogon,dns

# Check for sysvol and netlogon shares
Get-smbshare

# Review Logs
get-eventlog "Directory Service" | select entrytype, source, eventid, message
get-eventlog "Active Directory Web Services" | select entrytype, source, eventid, message
