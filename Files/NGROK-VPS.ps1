Set-LocalUser -Name "Administrator" -Password (ConvertTo-SecureString -AsPlainText "$PASSWORD" -Force)
Get-LocalUser -Name "Administrator" | Enable-LocalUser 
Invoke-WebRequest https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-windows-amd64.zip -OutFile ngrok.zip
tar xf ngrok.zip
Copy ngrok.exe C:\Windows\System32
if ($args[1]) { WMIC computersystem where caption=$(hostname) rename $args[1] }
sc start audiosrv
sc config Audiosrv start= auto
New-Item -Path "C:\Users\Public\Desktop" -Name "Teohook Setup" -ItemType Directory
New-Item -Path "C:\Users\Public\Desktop" -Name "FixedGT1" -ItemType Directory
New-Item -Path "C:\Users\Public\Desktop" -Name "FixedGT2" -ItemType Directory
New-Item -Path "C:\Users\Public\Desktop\Teohook Setup" -Name "VPN" -ItemType Directory
New-Item -Path "C:\Users\Public\Desktop\Teohook Setup" -Name "Latest GT" -ItemType Directory
New-Item -Path "C:\Users\Public\Desktop\Teohook Setup" -Name "Important" -ItemType Directory
New-Item -Path "C:\Users\Public\Desktop\Teohook Setup" -Name "DLL and Injector" -ItemType Directory
Invoke-WebRequest https://raw.githubusercontent.com/OnurCreed/secretsource/main/Files/Programs/teohook.dll -OutFile "C:\Users\Public\Desktop\Teohook Setup\DLL and Injector\teohook.dll"
Invoke-WebRequest https://raw.githubusercontent.com/OnurCreed/secretsource/main/Files/Programs/Extreme-Injector.exe -OutFile "C:\Users\Public\Desktop\Teohook Setup\DLL and Injector\Extreme-Injector.exe"
Invoke-WebRequest https://hide.me/downloads/Hide.me-Setup-3.8.3.exe -OutFile "C:\Users\Public\Desktop\Teohook Setup\VPN\Hide.me-Setup.exe"
Invoke-WebRequest https://ubistatic-a.akamaihd.net/0098/31789/GrowtopiaInstaller.exe -OutFile "C:\Users\Public\Desktop\Teohook Setup\Latest GT\GrowtopiaInstaller.exe"
Invoke-WebRequest https://raw.githubusercontent.com/OnurCreed/secretsource/main/Files/Programs/items.dat -OutFile "C:\Users\Public\Desktop\Teohook Setup\Important\items.dat"
Invoke-WebRequest https://raw.githubusercontent.com/OnurCreed/secretsource/main/Files/Programs/crashfix.txt -OutFile "C:\Users\Public\Desktop\Teohook Setup\Important\crashfix.txt"
Invoke-WebRequest https://www.dl.dropboxusercontent.com/s/slgchsastkpj13n/Growtopia.zip?dl=0 -OutFile "C:\Users\Public\Desktop\Growtopia.zip"
Invoke-WebRequest https://www.dl.dropboxusercontent.com/s/79kacg0wdlbrjgt/NordVPN-safon4e.exe?dl=0 -OutFile "C:\Users\Public\Desktop\NordVPN-Setup.exe"
Invoke-WebRequest https://raw.githubusercontent.com/OnurCreed/secretsource/main/Files/Programs/nordvpn-acc.txt -OutFile "C:\Users\Public\Desktop\nord-acc.txt"
Expand-Archive -Path C:\Users\Public\Desktop\Growtopia.zip -DestinationPath C:\Users\runneradmin\Appdata\Local
Expand-Archive -Path C:\Users\Public\Desktop\Growtopia.zip -DestinationPath C:\Users\Public\Desktop\FixedGT1
Expand-Archive -Path C:\Users\Public\Desktop\Growtopia.zip -DestinationPath C:\Users\Public\Desktop\FixedGT2
New-Item -ItemType SymbolicLink -Path "C:\Users\Public\Desktop" -Name "Normal Growtopia.lnk" -Value "C:\Users\runneradmin\Appdata\Local\Growtopia\Growtopia.exe"
Invoke-WebRequest https://github.com/OnurCreed/secretsource/raw/main/Files/Programs/Growtopia.exe -OutFile "C:\Users\Public\Desktop\FixedGT1\Growtopia\FixedGT1.exe"
Invoke-WebRequest https://github.com/OnurCreed/secretsource/raw/main/Files/Programs/Growtopia.exe -OutFile "C:\Users\Public\Desktop\FixedGT2\Growtopia\FixedGT2.exe"
New-Item -ItemType SymbolicLink -Path "C:\Users\Public\Desktop" -Name "Fixed GT1.lnk" -Value "C:\Users\Public\Desktop\FixedGT1\Growtopia\FixedGT1.exe"
New-Item -ItemType SymbolicLink -Path "C:\Users\Public\Desktop" -Name "Fixed GT2.lnk" -Value "C:\Users\Public\Desktop\FixedGT2\Growtopia\FixedGT2.exe"
Remove-Item C:\Users\Public\Desktop\FixedGT1\Growtopia\Growtopia.exe -Recurse
Remove-Item C:\Users\Public\Desktop\FixedGT2\Growtopia\Growtopia.exe -Recurse
Remove-Item C:\Users\Public\Desktop\Growtopia.zip -Recurse
cmd /c echo ./ngrok.exe authtoken "$NGROK" >a.ps1
cmd /c echo cmd /k start ngrok.exe tcp 3389 >>a.ps1
cmd /c echo ping -n 999999 10.10.10.10 >>a.ps1
 Write-Host "Visit: https://dashboard.ngrok.com/endpoints/status to get NGROK IP"
.\a.ps1
