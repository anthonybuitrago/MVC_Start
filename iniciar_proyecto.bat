@echo off
title Proyecto MVC - Servidor Local
cd /d "%~dp0MVC_Start"

echo ========================================================
echo   INICIANDO SERVIDOR WEB ASP.NET CORE MVC (.NET 8)
echo ========================================================
echo Abriendo tu navegador en http://localhost:5000 ...
echo Presiona Ctrl + C en esta ventana cuando quieras detenerlo.
echo ========================================================

:: Abre automaticamente el navegador tras 2 segundos cuando el servidor ya levanto
start "" powershell -NoProfile -Command "Start-Sleep -Seconds 2; Start-Process 'http://localhost:5000'"

:: Ejecuta el servidor en el puerto 5000
"C:\Users\Anthony\.dotnet\dotnet.exe" run --urls "http://localhost:5000"

pause
