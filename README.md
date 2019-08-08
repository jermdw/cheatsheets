# cheatsheets
Cheatsheets &amp; One-liners

## Windows

Enumerate Domain Computers

```
Get-ADComputer -Properties IPv4Address | FT Name,DNSHostName,IPv4Address -A
```
