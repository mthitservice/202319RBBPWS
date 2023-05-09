# Start Skriptaufzeichnung
Start-Transcript C:\Skripte\transkript\log.txt

# Netzbefehle
Get-NetIPConfiguration

Get-NetIPAddress

Get-DnsClientServerAddress

Get-NetRoute


Get-AdObject -Filter "ObjectClass -eq 'contact'"