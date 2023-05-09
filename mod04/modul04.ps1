# Neues PS Drive

New-PSDrive -Name Windir -Root c:\Windows -PSProvider FileSystemdir 
get-childitem  windir:
New-Item C:\Skripte\NeuerOrdner -ItemType Folder 
Set-Location windir:
set-location HKLM:\SOFTWARE\ 

new-item -name Demo
new-itemproperty -path HKLM:\Software\Demo -Name Demo -value Test -PropertyType string
Get-ItemProperty -path Demo
