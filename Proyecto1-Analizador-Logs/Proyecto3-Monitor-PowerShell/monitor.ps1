Write-Host "=== MONITOR SOC WINDOWS ===" -ForegroundColor Red
Write-Host "Buscando procesos sospechosos..."
Get-Process | Where-Object {$_.ProcessName -like "*nc*" -or $_.ProcessName -like "*nmap*" -or $_.ProcessName -like "*mimikatz*"} | Format-Table Name, Id, CPU
Write-Host "Buscando conexiones de red activas..."
Get-NetTCPConnection -State Established | Select-Object LocalAddress, RemoteAddress, State | Format-Table
Write-Host "=== FIN DE ESCANEO ==="
