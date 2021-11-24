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