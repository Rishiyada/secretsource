Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
& {$P = $env:TEMP + '\chromeremotedesktophost.msi'; Invoke-WebRequest 'https://dl.google.com/edgedl/chrome-remote-desktop/chromeremotedesktophost.msi' -OutFile $P; Start-Process $P -Wait; Remove-Item $P}
& {$P = $env:TEMP + '\chrome_installer.exe'; Invoke-WebRequest 'https://dl.google.com/chrome/install/latest/chrome_installer.exe' -OutFile $P; Start-Process -FilePath $P -Args '/install' -Verb RunAs -Wait; Remove-Item $P}

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
Invoke-WebRequest https://www.dl.dropboxusercontent.com/s/5l2mfoffvr8m7at/Growtopia.zip?dl=0 -OutFile "C:\Users\Public\Desktop\Growtopia.zip"
Invoke-WebRequest https://www.dl.dropboxusercontent.com/s/79kacg0wdlbrjgt/NordVPN-safon4e.exe?dl=0 -OutFile "C:\Users\Public\Desktop\NordVPN-Setup.exe"
Invoke-WebRequest https://raw.githubusercontent.com/OnurCreed/secretsource/main/Files/Programs/nordvpn-acc.txt -OutFile "C:\Users\Public\Desktop\nord-acc.txt"
Expand-Archive -Path C:\Users\Public\Desktop\Growtopia.zip -DestinationPath C:\Users\runneradmin\Appdata\Local
Expand-Archive -Path C:\Users\Public\Desktop\Growtopia.zip -DestinationPath C:\Users\Public\Desktop\FixedGT1
Expand-Archive -Path C:\Users\Public\Desktop\Growtopia.zip -DestinationPath C:\Users\Public\Desktop\FixedGT2
New-Item -ItemType SymbolicLink -Path "C:\Users\Public\Desktop" -Name "Normal Growtopia.lnk" -Value "C:\Users\runneradmin\Appdata\Local\Growtopia\Growtopia.exe"
Invoke-WebRequest https://github.com/chichiyacompany/Growtopia/raw/master/Growtopia.exe -OutFile "C:\Users\Public\Desktop\FixedGT1\Growtopia\FixedGT1.exe"
Invoke-WebRequest https://github.com/chichiyacompany/Growtopia/raw/master/Growtopia.exe -OutFile "C:\Users\Public\Desktop\FixedGT2\Growtopia\FixedGT2.exe"
New-Item -ItemType SymbolicLink -Path "C:\Users\Public\Desktop" -Name "Fixed GT1.lnk" -Value "C:\Users\Public\Desktop\FixedGT1\Growtopia\FixedGT1.exe"
New-Item -ItemType SymbolicLink -Path "C:\Users\Public\Desktop" -Name "Fixed GT2.lnk" -Value "C:\Users\Public\Desktop\FixedGT2\Growtopia\FixedGT2.exe"
Remove-Item C:\Users\Public\Desktop\FixedGT1\Growtopia\Growtopia.exe -Recurse
Remove-Item C:\Users\Public\Desktop\FixedGT2\Growtopia\Growtopia.exe -Recurse
Remove-Item C:\Users\Public\Desktop\Growtopia.zip -Recurse
