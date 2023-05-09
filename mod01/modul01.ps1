#Command Beispiel
Get-Command *net*

#Get-Help Beispiel
Get-Help *net* -Category Cmdlet

# About*
get-help about*

get-help about_aliases

get-help about_eventlogs -ShowWindow


cls
get-help *beep*

#Aliases

Get-ChildItem

Get-Alias dir

New-Alias list Get-ChildItem

Get-Alias -Definition Get-Childitem

#Module
Get-Module

Get-Module -ListAvailable

Import-Module WindowsUpdate