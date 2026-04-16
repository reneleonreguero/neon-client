#!/bin/bash
# NEON ERP - Instalador macOS
# Versao: 0.1.0

echo ""
echo "╔═══════════════════════════════════════╗"
echo "║    NEON ERP - Instalador macOS        ║"
echo "╚═══════════════════════════════════════╝"
echo ""

DESTINO="/usr/local/bin/neon"

# Copiar script
sudo cp "$(dirname "$0")/neon" "$DESTINO"
sudo chmod 755 "$DESTINO"

if [ -f "$DESTINO" ]; then
    echo "╔═══════════════════════════════════════╗"
    echo "║  NEON ERP instalado com sucesso!      ║"
    echo "╠═══════════════════════════════════════╣"
    echo "║  Para conectar, abra o Terminal e     ║"
    echo "║  digite: neon                         ║"
    echo "║                                       ║"
    echo "║  Sera solicitado usuario e senha.     ║"
    echo "║  Contate o administrador para obter   ║"
    echo "║  suas credenciais de acesso.          ║"
    echo "╚═══════════════════════════════════════╝"
else
    echo "Erro na instalacao. Verifique permissoes."
fi
echo ""
