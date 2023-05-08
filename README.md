#202319RBBPWS
##Powershell Kurs
### Trainer: Michael Lindner

>Zumstarten der Skriptaufzeichnung folgenden Skript benutzen:
``` powershell
Start-Transcript -Path "c:\transcripts\transcript0.txt" -NoClobber
```
Installation Winget
```

# get latest download url
$URL = "https://api.github.com/repos/microsoft/winget-cli/releases/latest"
$URL = (Invoke-WebRequest -Uri $URL).Content | ConvertFrom-Json |
        Select-Object -ExpandProperty "assets" |
        Where-Object "browser_download_url" -Match '.msixbundle' |
        Select-Object -ExpandProperty "browser_download_url"

# download
Invoke-WebRequest -Uri $URL -OutFile "Setup.msix" -UseBasicParsing

# install
Add-AppxPackage -Path "Setup.msix"

# delete file
Remove-Item "Setup.msix"

```

```
Get-ChildItem 'HKLM:\SOFTWARE\Microsoft\NET Framework Setup\NDP' -Recurse | Get-ItemProperty -Name version -EA 0 | Where { $_.PSChildName -Match '^(?!S)\p{L}'} | Select PSChildName, version
```

```
 (Get-AppxPackage).where({$_.name -match 'Microsoft.UI.Xaml.2.7'}) 
 ```

 ```
 # Install NuGet
Install-Module PowerShellGet -Force
Register-PackageSource -provider NuGet -name nugetRepository -location https://www.nuget.org/api/v2

# Install Microsoft.UI.Xaml 
Install-Package Microsoft.UI.Xaml -RequiredVersion 2.7 -Force

```

```
https://answers.microsoft.com/en-us/windows/forum/all/what-is-microsoftuixaml27-and-why-dont-i-have-it/9e5753be-3b5f-4975-ac00-a28344c710a6
```