echo "______________________________________________________________________________________________________________________________ minimized window
:: minimized s
@Echo Off
if not "%minimized%"=="" goto :minimized
set minimized=true
start /min cmd /C "%~dpnx0"
goto :EOF
:minimized
:: minimized e


echo "______________________________________________________________________________________________________________________________ 
title %~n0
@echo off
chcp 65001
setlocal
set zip_file=Desktop.zip
echo "______________________________________________________________________________________________________________________________  
taskkill /im alsong.exe /f
timeout 600


taskkill /im alsong.exe /f
timeout 600


taskkill /im alsong.exe /f
timeout 600


taskkill /im alsong.exe /f
timeout 600


taskkill /im alsong.exe /f
timeout 600


taskkill /im alsong.exe /f
timeout 600


taskkill /im alsong.exe /f
timeout 600

