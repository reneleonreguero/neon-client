#!/bin/bash
# NEON ERP - Instalador Linux (generico, para distros sem .deb)
# Versao: 0.1.0

echo ""
echo "╔═══════════════════════════════════════╗"
echo "║    NEON ERP - Instalador Linux        ║"
echo "╚═══════════════════════════════════════╝"
echo ""

if [ "$EUID" -ne 0 ]; then
    echo "Execute como root: sudo ./instalar-neon.sh"
    exit 1
fi

DESTINO="/usr/local/bin/neon"

cp "$(dirname "$0")/neon" "$DESTINO"
chmod 755 "$DESTINO"

if [ -f "$DESTINO" ]; then
    echo "╔═══════════════════════════════════════╗"
    echo "║  NEON ERP instalado com sucesso!      ║"
    echo "╠═══════════════════════════════════════╣"
    echo "║  Para conectar, abra o terminal e     ║"
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
