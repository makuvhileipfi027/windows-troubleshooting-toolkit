Write-Host "Windows Troubleshooting Toolkit"
Write-Host "-------------------------------"

Write-Host "Checking Disk Space..."
Get-PSDrive C

Write-Host "Checking Running Services..."
Get-Service | Where-Object {$_.Status -eq "Running"}

Write-Host "Checking Internet Connection..."
Test-Connection google.com -Count 2

Write-Host "System Information..."
systeminfo