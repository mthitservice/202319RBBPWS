#Pipeline
Get-Service | ForEach Name


Get-EventLog -List| where Log -EQ 'System' | ForEach Clear

# 

Get-Help Get-Process -ShowWindow

Get-Help get-ADUser -ShowWindow


# Dienst starten
Get-Service -Name bits | Start-Service
#Dienst anhalzen
Get-Service -Name bits | stop-Service

#Member anschauen
Get-Service | Get-Member

$ser=Get-Service -Name bits
$ser.Stop()


$dasistdashausvomnikolaus=Get-Service -Name bits
$dasistdashausvomnikolaus.Start()

get-LocalUser | Get-Member

Get-LocalUser  | Sort-Object -Property LastLogon -Descending | Select-Object -Property Name ,@{n='Account age (days)';e={(New-TimeSpan -Start $PSItem.LastLogon).Days}},@{n='Beschreibung';e={$_.Description}}


#Konvertierung
Get-Process | ConvertTo-Html | Out-File test.html


Get-Process | ConvertTo-Csv   | Out-File test.csv
Get-Process | Export-CSV   test2.csv

Get-Process | Export-CLiXML   test.xml

# Filter
get-physicaldisk | where FriendlyName -Like '*'

get-physicaldisk | Where-Object -FilterScript {$PSITEM.HealthStatus -eq 'Healthy'} | Select-Object -Property FriendlyName,OperationalStatus,DriveLetter,FileSystem| ft -AutoSize


Get-Verb | where { $_.Verb -like 'c*'} |fw

#Berechnung und Gruppierung
Get-Service | Measure-Object

Get-Process  | Measure-Object -Property VM -Sum -Average

#Sortierung
Get-EventLog -LogName Security -Newest 10 | Sort-Object -Property TimeWritten

Get-Process | Sort-Object -Property VM -Descending	 |Select-Object -First 10
#Selektion
get-date | Select-Object -Property DayOfWeek

Get-EventLog -LogName Security -Newest 10 | Sort-Object -Property TimeWritten |Select-Object -Property EventID,TimeWritten,Message > log.txt

Get-EventLog -LogName Security -Newest 10  |sort -Property TimeGenerated

# Besonderheiten bei Pipelines  (Overriding)
Get-Process -Name Notepad | Stop-Process 

Get-Process -Name Notepad  | Stop-Process -Name Notepad 


