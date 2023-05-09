#WMI und CIM
Get-WmiObject -Class Win32_Service | ft -AutoSize

Get-WmiObject -Class Win32_Process 
Get-CimInstance -Class Win32_Process 

Get-CimInstance -ClassName Win32_LogicalDisk 

Get-CimInstance  -Query "Select * from win32_NetworkAdapter"

# WMI Spezial
Get-WmiObject -Class Win32_Service  | Get-Member

Get-WmiObject -Class Win32_Service  | Get-Member | where Name -eq 'Change'| Format-List Name,Definition,*

#CIM Spezial
Get-CimClass -ClassName Win32_Service | Select-Object -ExpandProperty CimClassMethods | Sort-Object -Property Name

Get-CimInstance -ClassName Win32_Process -Filter "Name='mspaint.exe'" | Invoke-CimMethod -name Terminate

Invoke-CimMethod -ComputerName localhost -ClassName Win32_OperatingSystem  -MethodName Reboot

# CIM Session
$dierebelion=Get-Credential

$starwars=New-CimSession -ComputerName localhost  -Credential $dierebelion

Get-CimInstance -CimSession $starwars -ClassName Win32_OperatingSystem

$starwars |Remove-CimSession
#