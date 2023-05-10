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

#Array abrufen
# Foreach-Object
$data | ForEach-Object {

"Item: [$PSItem]"

}

# foreach iteration
foreach ($neuerVariablenname in $data)
{
 "Item : [$neuerVariablenname]"

}

$data.ForEach({"Item : [$_]"})

for($idx=0;$idx -lt $data.Count;$idx++)
{
    "Item:[{0}]" -f $data[$idx]
}

# Bedingung und Fallunterscheidung
switch ($data)
{
    'Wert1'
        {'schöner Wert 1'   }
    'Wert2'
        {'schöner Wert 2'}
        Default
        { 'Ansonsonsten'}



}

$a=2
if ($a -gt 2){
    Write-Host "Der Wert $a ist größer 2."
}
elseif ($a -eq 2)
{
    Write-Host "Der Wert $a ist gleich 2."
}
else {
    Write-Host "Der Wert $a ist nicht größer 2." {<# Action when all if and elseif conditions are false #>}
}
#$a=2
#a -eq 2 ? "Ist 2" :" Ist nicht 2"
#$p="c:\"
#$t=(Test-Path $p) ? "Exists":"not"
$zl=5
# Fussgesteuerte Schleife
do {
$zl++;
Write-Host "ZL:$zl"

}
while($zl -lt 20)
# Kopfgesteuerte Schleife 
while($zl -gt 11)
{
    $zl--;
    Write-Host "ZL:$zl"

}

