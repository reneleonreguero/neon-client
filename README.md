# NEON ERP - Cliente de Conexao

Cliente para conectar ao servidor NEON ERP.

## Instalacao

### Linux (Debian/Ubuntu)

```bash
wget https://github.com/reneleonreguero/neon-client/releases/latest/download/neon-client.deb
sudo dpkg -i neon-client.deb
```

### Linux (outras distros)

```bash
git clone https://github.com/reneleonreguero/neon-client.git
cd neon-client/linux
sudo ./instalar-neon.sh
```

### macOS

```bash
git clone https://github.com/reneleonreguero/neon-client.git
cd neon-client/mac
sudo ./instalar-neon.sh
```

### Windows (com admin)

1. Baixe os arquivos da pasta `windows/`
2. Clique com botao direito em `instalar-neon.bat` > **Executar como administrador**

### Windows (sem admin - portatil)

1. Baixe o ZIP da release: [Download](https://github.com/reneleonreguero/neon-client/releases/latest/download/neon-portatil-windows.zip)
2. Extraia a pasta em qualquer lugar (Desktop, Documentos, etc.)
3. De duplo-clique em `neon.bat`

## Uso

Apos instalar, abra o terminal e digite:

```
neon
```

Sera solicitado usuario e senha. Contate o administrador para obter suas credenciais.

## Requisitos

- **Linux/macOS**: OpenSSH (ja vem instalado na maioria dos sistemas)
- **Windows 10+**: OpenSSH Client (ativar em Configuracoes > Aplicativos > Recursos opcionais)

## Suporte

Contate o administrador do sistema para duvidas sobre acesso.
