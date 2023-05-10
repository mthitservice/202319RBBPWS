#Holen der Dienste (Felder Computername, Pfad, Servicename, Datum)

$Computername=$env:COMPUTERNAME
$Computername
$s= Get-CimInstance -ClassName Win32_Service 
$Dienste= New-Object -TypeName System.Collections.ArrayList
$s|Select Name,DisplayName,State,PathName|ForEach-Object {
    $Dienste.add($_)
    }


#Connection Objekt SQL
$Connectionstring="Server=172.31.94.15,1433;Database=ffb;User Id=ffb_service;Password=1#2022ffb1;TrustServerCertificate=False;Encrypt=False"


$co= New-Object System.Data.SqlClient.SqlConnection($Connectionstring)
$co.Open()
# SQL Anweisung





$Dienste.foreach{
    $sql="INSERT INTO [dbo].[tab_serviceInventar] (  [Computername],[Path] ,[DiensteName])VALUES  ('$Computername','"+ $_.PathName +"','" + $_.Name+ "');"
    $command=new-Object System.Data.SqlClient.sqlCommand($sql,$co)

  $command.ExecuteScalar()
  
}





$sql="SELECT * FROM [FFB].[dbo].[tab_serviceInventar]"

# Command SQL
$rd=$command.ExecuteReader()
while ($rd.Read())
{
            write-host ($rd["Computername"].ToString())

}




# Schließen der SQL Verbindung

$rd.Close()