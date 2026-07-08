cd ~
mkdir Proyecto3-Monitor-PowerShell
nano Proyecto3-Monitor-PowerShell/monitor.ps1
Write-Host "=== MONITOR SOC WINDOWS ===" -ForegroundColor Red
Get-Process | Where-Object {$_.ProcessName -like "*nc*"} | Format-Table Name, Id
Get-NetTCPConnection -State Established | Select-Object LocalAddress, RemoteAddress | Format-Table

