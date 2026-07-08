#!/bin/bash
echo "=== ESCANEO SOC DE RED ==="
echo "Objetivo: 192.168.1.1"
nmap -sV 192.168.1.1 -oN reporte_nmap.txt
echo "Reporte guardado en reporte_nmap.txt"
cat reporte_nmap.txt

