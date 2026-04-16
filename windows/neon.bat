@echo off
title NEON ERP - Conexao
cls

echo ========================================
echo         NEON ERP - Conexao
echo ========================================
echo.

REM Verificar se ssh existe (Windows 10+ tem OpenSSH)
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

set /p USUARIO="Usuario: "
if "%USUARIO%"=="" (
    echo Usuario nao pode ser vazio.
    pause
    exit /b 1
)

echo Conectando ao servidor NEON...
echo.
ssh -o ServerAliveInterval=60 -o ServerAliveCountMax=3 -p 22 %USUARIO%@35.247.225.22
pause
