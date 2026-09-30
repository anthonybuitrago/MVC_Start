@echo off
title Abrir Proyecto en VS Code
cd /d "%~dp0"
if exist "%LocalAppData%\Programs\Microsoft VS Code\Code.exe" (
    start "" "%LocalAppData%\Programs\Microsoft VS Code\Code.exe" "%~dp0"
) else (
    code .
)
