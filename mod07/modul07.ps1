# Funktionen

function Write-FFBHallo {
    function Main {
        $Date = GetDateString -Datumsformat "dd.MM.yyyy"
        Write-Output "Hallo FFB User"
        Write-Output "[Date] $Date"

    }

    #gekapselte private Funktion

    Function GetDateString {
        param([string]$Datumsformat="yyyy-DD-mm")

        $Date = Get-Date -Format $Datumsformat
        Write-Output "[Date] $Date"
    }
    # Aufruf der Main Funtion am Ende (Weil alle Fn erst deklariert werden müssen)
   Main
}


Write-FFBHallo
Get-Command getd*
Get-Command Write-*