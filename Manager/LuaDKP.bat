@echo off
cd /D %~dp0
chcp 65001 > nul

if not exist Bin\lua5.1.exe goto NOLUA

Bin\lua5.1.exe Console/Main.lua
if %errorlevel 1 goto ERROR
exit

:NOLUA
echo Error: Lua interpreter (lua5.1.exe) not found!
echo.
if exist Bin\readme.txt type Bin\readme.txt

:ERROR
echo.
pause
