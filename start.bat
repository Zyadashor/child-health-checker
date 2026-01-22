@echo off
title Child Health App Launcher
color 0A

echo ========================================
echo    Child Health App - Starting...
echo ========================================
echo.

cd "%~dp0"

echo [1/2] Starting Backend Server...
start "Backend Server" cmd /k "cd backend && D:\Newfolder\envs\AIASHOUR\python.exe app.py"

timeout /t 3 /nobreak >nul

echo [2/2] Starting Frontend...
start "Frontend Server" cmd /k "cd Frontend && npm start"

echo.
echo ========================================
echo    Both Servers Started!
echo    Frontend: http://localhost:3000
echo    Backend:  http://127.0.0.1:5000
echo ========================================
echo.
pause >nul
