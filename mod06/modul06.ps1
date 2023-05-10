# Variablen und Array

$a=5
$b=7
$c=$a+$b
$c

$c=87272984756923759287987952457
$c.GetType().Name

$txt="Das ist ein Text"
$txt | Get-Member
$txt.GetType()

# Array (Feldspeicher)

$liste="Wert1","Wert2","Wert4"
$liste.GetType().Name
$liste
$liste.Count

# Array mit Null Zustand
$data=@()
$data.Count

# Array mit Werten
$data=@('Zero','one','zwo')
$data.Count

$data=@(
    'Zero'
    'one'
    'zwo')
$data.Count

#Zugriff au den Array
$data=@(
    'Zero'
    'one'
    'zwo')
$data[2..1]

$data=@(
    'Zero'
    'one'
    'zwo')
$data[-1]
# Vergleich ob Initialisiert (mit Null verglichen)
$null -eq $data[13]

$date=Get-Date
$date.Count
$date.GetType().Name
$date.GetType().Namespace
$date=$null
$date.Count

$data=@(
    'Zero'
    'one'
    'zwo')

$data[$data.Count-1]
$data.GetUpperBound(0)
# Array beschreiben
$data=New-Object  -TypeName 'System.Collections.ArrayList'
$data.Count
$data.Add("Wert1")
$data.Add("Wert2")
$data.Add("Wert3")
$data.Count
# Ändern des Feldes an Pos 1
$data[1]="Wert2 besonders"
$data
# Pos 1 löschen
$data.RemoveAt(1)
$data


