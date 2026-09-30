@echo off
title Subir Proyecto a GitHub
cd /d "%~dp0"
echo ==============================================
echo   SUBIENDO PROYECTO A TU GITHUB (anthonybuitrago/MVC_Start)
echo ==============================================
git push -u origin main
echo.
if %errorlevel% equ 0 (
    echo ==============================================
    echo  PROYECTO SUBIDO CON EXITO A TU GITHUB!
    echo ==============================================
) else (
    echo [ERROR] Si dio error, asegurate de haber creado primero el repositorio
    echo vacio en https://github.com/new con el nombre 'MVC_Start'.
)
pause
