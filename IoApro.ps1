#ping
New-NetFirewallRule -DisplayName "File and Printer Sharing (Echo Request - ICMPv4-In)" -enabled True
New-NetFirewallRule -DisplayName "File and Printer Sharing (Echo Request - ICMPv6-In)" -enabled True

#Accesso webserver
New-NetFirewallRule -DisplayName "WebServer" -Direction Inbound -LocalPort 80 -Protocol TCP -Action Allow

#SQL
New-NetFirewallRule -DisplayName "SQLServer default instance" -Direction Inbound -LocalPort 1433 -Protocol TCP -Action Allow
New-NetFirewallRule -DisplayName "SQLServer Browser service" -Direction Inbound -LocalPort 1434 -Protocol UDP -Action Allow

#Node-red
New-NetFirewallRule -DisplayName "Node-red" -Direction Inbound -LocalPort 1880 -Protocol TCP -Action Allow

#Server Modbus
New-NetFirewallRule -DisplayName "Server modbus" -Direction Inbound -LocalPort 502 -Protocol TCP -Action Allow

#EcoStruxure Machine SCADA Expert
New-NetFirewallRule -DisplayName "SCADA Expert" -Direction Inbound -LocalPort 4322 -Protocol TCP -Action Allow

#EcoStruxure Augmented Operator Advisor
New-NetFirewallRule -DisplayName "Node-red comunicazione AOA" -Direction Inbound -LocalPort 8082 -Protocol TCP -Action Allow
New-NetFirewallRule -DisplayName "Morsetto operatore AOA" -Direction Inbound -LocalPort 8080 -Protocol TCP -Action Allow

#SIEMENS
New-NetFirewallRule -DisplayName "Siemens_102" -Direction Inbound -LocalPort 102 -Protocol TCP -Action Allow
New-NetFirewallRule -DisplayName "Siemens_1033" -Direction Inbound -LocalPort 1033 -Protocol TCP -Action Allow
New-NetFirewallRule -DisplayName "Siemens_2308" -Direction Inbound -LocalPort 2308 -Protocol TCP -Action Allow
New-NetFirewallRule -DisplayName "Siemens_5001" -Direction Inbound -LocalPort 5001 -Protocol TCP -Action Allow
New-NetFirewallRule -DisplayName "Siemens_5002" -Direction Inbound -LocalPort 5002 -Protocol TCP -Action Allow
New-NetFirewallRule -DisplayName "Siemens_50523" -Direction Inbound -LocalPort 50523 -Protocol TCP -Action Allow

#SIEMENS WINCC 
New-NetFirewallRule -DisplayName "WCCILScsService" -Group "SIMATIC WinCC UA" -Direction Inbound -Program  "C:\Program Files\Siemens\Automation\WinCCUnified\bin\WCCILscs.exe" -Protocol TCP -Action Allow
New-NetFirewallRule -DisplayName "WinCC RTIL data" -Group "SIMATIC WinCC UA" -Direction Inbound -Program  "C:\Program Files\Siemens\Automation\WinCCUnified\bin\WCCILdata.exe" -Protocol TCP -Action Allow
New-NetFirewallRule -DisplayName "WinCC RTIL dist" -Group "SIMATIC WinCC UA" -Direction Inbound -Program  "C:\Program Files\Siemens\Automation\WinCCUnified\bin\WCCILdist.exe" -Protocol TCP -Action Allow
New-NetFirewallRule -DisplayName "WinCC RTIL event" -Group "SIMATIC WinCC UA" -Direction Inbound -Program  "C:\Program Files\Siemens\Automation\WinCCUnified\bin\WCCILevent.exe" -Protocol TCP -Action Allow
New-NetFirewallRule -DisplayName "WinCC RTIL proxy" -Group "SIMATIC WinCC UA" -Direction Inbound -Program  "C:\Program Files\Siemens\Automation\WinCCUnified\bin\WCCILproxy.exe" -Protocol TCP -Action Allow
New-NetFirewallRule -DisplayName "WinCC RTIL redu" -Group "SIMATIC WinCC UA" -Direction Inbound -Program  "C:\Program Files\Siemens\Automation\WinCCUnified\bin\WCCILredu.exe" -Protocol TCP -Action Allow
New-NetFirewallRule -DisplayName "WinCC VCS" -Group "SIMATIC WinCC UA" -Direction Inbound -Program  "C:\Program Files\Siemens\Automation\WinCCUnified\bin\GfxRTS.exe" -Protocol TCP -Action Allow

#Vijeo Designer
New-NetFirewallRule -DisplayName "Vijeo Designer Control" -Direction Inbound -LocalPort 6001 -Protocol TCP -Action Allow
New-NetFirewallRule -DisplayName "Vijeo Designer Download" -Direction Inbound -LocalPort 13777 -Protocol TCP -Action Allow

#SoMachine
New-NetFirewallRule -DisplayName "SoMachine" -Direction Inbound -LocalPort 1105 -Protocol TCP -Action Allow

#Secomea
New-NetFirewallRule -DisplayName "Secomea" -Direction Inbound -LocalPort 80 -Protocol TCP -Action Allow

#AVEVA Enterprise Licensing Platform
New-NetFirewallRule -DisplayName "AVEVA_Server" -Direction Inbound -LocalPort 55555 -Protocol TCP -Action Allow
New-NetFirewallRule -DisplayName "AVEVA_Agent" -Direction Inbound -LocalPort 59200 -Protocol TCP -Action Allow
New-NetFirewallRule -DisplayName "AVEVA_Historian" -Direction Inbound -LocalPort 32568 -Protocol TCP -Action Allow
New-NetFirewallRule -DisplayName "AVEVA_Insight" -Direction Inbound -LocalPort 32569 -Protocol TCP -Action Allow
New-NetFirewallRule -DisplayName "AVEVA_Search" -Direction Inbound -LocalPort 32570 -Protocol TCP -Action Allow
