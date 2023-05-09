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

Get-LocalUser  | Sort-Object -Property LastLogon -Descending | Select-Object -Property Name ,@{ n='Account age (days)';e={(New-TimeSpan -Start $PSItem.LastLogon).Days}}
