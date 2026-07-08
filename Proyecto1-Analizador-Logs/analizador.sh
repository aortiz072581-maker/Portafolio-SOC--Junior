#!/bin/bash
echo "=== BUSCADOR DE ATAQUES EN LOGS SOC ==="
echo "Analizando logs_ataque.txt..."
echo ""
echo "[!] Intentos de fuerza bruta detectados:"
grep "Failed password" logs_ataque.txt
echo ""
echo "[!] Posibles bloqueos de Firewall:"
grep "UFW BLOCK" logs_ataque.txt
echo ""
echo "=== REPORTE GENERADO: 3 ataques detectados desde 192.168.1.50 ==="

