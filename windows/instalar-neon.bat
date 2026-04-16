@echo off
title NEON ERP - Instalador
cls

echo ========================================
echo    NEON ERP - Instalador Windows
echo ========================================
echo.

REM Verificar admin
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Este instalador precisa ser executado como Administrador.
    echo Clique com botao direito ^> Executar como administrador.
    pause
    exit /b 1
)

REM Copiar neon.bat para pasta do sistema
copy "%~dp0neon.bat" "C:\Windows\neon.bat" >nul 2>&1
if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo   NEON ERP instalado com sucesso!
    echo ========================================
    echo.
    echo   Para conectar, abra o Prompt de
    echo   Comando ou PowerShell e digite:
    echo.
    echo       neon
    echo.
    echo   Sera solicitado usuario e senha.
    echo   Contate o administrador para obter
    echo   suas credenciais de acesso.
    echo ========================================
) else (
    echo Erro ao instalar. Verifique permissoes.
)

echo.
pause
