# Allow incoming FTP control channels
Write-Host "[i] Allowing inbound FTP connections through the firewall"
New-NetFirewallRule -DisplayName "FTP In" -Direction Inbound -Protocol TCP -Enabled True -Action Allow -Profile Any -Program "%SystemRoot%\System32\ftp.exe" -Service Any -LocalPort 20,21,1024-65535 -EdgeTraversalPolicy Allow;
