@echo off
title NEON ERP - Conexao
cls

echo ========================================
echo         NEON ERP - Conexao
echo ========================================
echo.

where ssh >nul 2>&1
if %errorlevel% neq 0 (
    echo Erro: SSH nao esta instalado.
    echo.
    echo Ative o OpenSSH no Windows:
    echo   Configuracoes ^> Aplicativos ^> Recursos opcionais
    echo   ^> Adicionar recurso ^> OpenSSH Client
    echo.
    pause
    exit /b 1
)

set "CHAVE=%~dp0neon_key"
if not exist "%CHAVE%" (
    echo Erro: Chave de acesso nao encontrada.
    echo Coloque o arquivo neon_key na mesma pasta deste script.
    pause
    exit /b 1
)

echo Conectando ao servidor NEON...
echo.
ssh -o StrictHostKeyChecking=accept-new -o ServerAliveInterval=60 -o ServerAliveCountMax=3 -i "%CHAVE%" -p 22 neon@35.247.225.22
pause
