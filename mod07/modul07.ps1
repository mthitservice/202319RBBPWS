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
Get-Command getde
Get-Command Write-*
# SIG # Begin signature block
# MIIFWwYJKoZIhvcNAQcCoIIFTDCCBUgCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUTEZtkAU+cRduW9mRFelO8fJD
# faCgggL2MIIC8jCCAdqgAwIBAgIQLuWoIMT63KNGByE1AMwEoDANBgkqhkiG9w0B
# AQsFADAaMRgwFgYDVQQDEw9NaWNoYWVsLkxpbmRuZXIwHhcNMjIwNzEyMDgwMzMx
# WhcNMjMwNzEyMTQwMzMxWjAaMRgwFgYDVQQDEw9NaWNoYWVsLkxpbmRuZXIwggEi
# MA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDk0XzzVQytxhP49ogJJxeI4ej4
# OPrN2HspESIC7lsctwJu2fj10HRRpd8US/9Smca16T5q5HotiAQ+U78RRxcynEDd
# MgtAvoUXLfbZ37WmOHfCHtPmgxoNgW9CwOyoXfMWNexQC/29tnnrJT1GASzFGHUJ
# ulynWScSyXrKf2pRzCjKrEgo3eJvL58RfIHNl5+LFNSuno1DxJwHkKv271aLbNnc
# LDBcOTDxxFu8/tgGCmHHkpIu4ZJtA6lOqtxNBYvzAqHlXQZzyEI0TBsqvH1wDpCv
# 3/Gyc1brj0mJhPVogiKB1loote7fbSlBU/eQCXWZ89w34BlXAhceUNhs8RihAgMB
# AAGjNDAyMAwGA1UdEwEB/wQCMAAwIgYDVR0lAQH/BBgwFgYIKwYBBQUHAwMGCisG
# AQQBgjdUAwEwDQYJKoZIhvcNAQELBQADggEBAJBuZVLTFu4PEDjPzXasRxeciiVI
# nPggNUOTlh/Uy+wzqp2RC+EIYZOQRQhcU+gB5IuL5oa/1OpcjXxPp32jauAgWFyF
# htrDry/hvbu2laqGrhhZpIVwoO+rMsJTBT4a14Mba2nqFbWwtNNhc4xjX8veuHlG
# RjrO07thD5jK/maWJOddmzsomT2Lht5jSMuKj5r+A2q7AdoF2mVyoc2gAfT0pp9c
# gDflm07qpkb9WXEl/+2pGoVB9pizyJJ3Zf6RY1eppjZWsHlOhW3mMlJKPwloiVI+
# L0pbxTA/NKVR/jwWUelyYCiVM/WwpHnISzQ0SoygF9HuxonIuoIY+k7cSLAxggHP
# MIIBywIBATAuMBoxGDAWBgNVBAMTD01pY2hhZWwuTGluZG5lcgIQLuWoIMT63KNG
# ByE1AMwEoDAJBgUrDgMCGgUAoHgwGAYKKwYBBAGCNwIBDDEKMAigAoAAoQKAADAZ
# BgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgorBgEEAYI3AgELMQ4wDAYKKwYB
# BAGCNwIBFTAjBgkqhkiG9w0BCQQxFgQUCCHc0VLWpoo1XsSOtiC18hEfiw0wDQYJ
# KoZIhvcNAQEBBQAEggEAuwHaUl9wOnqDbhceWgAg3+qiDu8Jg2MBTOiE6JLkYIdS
# mAkxukqTiei1mWoZTc+sI+O9CFyoRF8tC1QbZYoP+Iom2ayV4uoxYj8NePD13lSX
# 4QW52sDAUnqnuG0SUPf6EOU1imbdywii5IBfsqvWOpd7sJ3O5u3UOIf54x8XJGBF
# 5KusK3r44pnAvL453/ibp2Lc+1lLgi0gMjLjdjRzg3WjzDx6vLkpzX/gIMI9Z2Q+
# 1L9OU04GCoTrqVVn/JSoQqW+2FCsHq4GU8P+SgkjC6WZg+ivE9UOTreQ5pDQXzDM
# jUsfSy8pKcml5nNDw/9hc3mgDt8HJ7TY2EzhFJhouQ==
# SIG # End signature block
