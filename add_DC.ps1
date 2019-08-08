# Convert Windows Server 2016 into Domain Controller

Rename-computer -newname 2016-DC02
$ipaddress = "10.0.0.3"
$dnsaddress = "10.0.0.2"
New-NetIPAddress -InterfaceAlias Ethernet -IPAddress $ipaddress -AddressFamily IPv4 -PrefixLength 24
Set-DnsClientServerAddress -InterfaceAlias Ethernet -ServerAddresses $dnsaddress
Restart-computer
 
Set-TimeZone -Id "Mountain Standard Time"
 
Install-WindowsFeature AD-Domain-Services -IncludeManagementTools
 
#see if any updates are available and patch prior by using sconfig or
$AutoUpdates = New-Object -ComObject "Microsoft.Update.AutoUpdate"
$AutoUpdates.DetectNow()
 
Install-ADDSDomainController  -DomainName "sixteen.contoso.ad" -credential $(get-credential)
