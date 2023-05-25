@echo off
echo "______________________________________________________________________________________________________________________________ echo

echo "______________________________________________________________________________________________________________________________ minimized window
:: minimized s
if not "%minimized%"=="" goto :minimized
set minimized=true
start /min cmd /C "%~dpnx0"
goto :EOF
:minimized
:: minimized e
echo "______________________________________________________________________________________________________________________________ getAdmin  
REM >nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM if '%errorlevel%' NEQ '0' ( echo Requesting administrative privileges... goto UACPrompt 
REM ) else ( goto gotAdmin ) 
REM :UACPrompt 
	REM echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs" 
	REM set params = %*:"="" 
	REM echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" 
	REM "%temp%\getadmin.vbs" 
	REM del "%temp%\getadmin.vbs" 
	REM exit /B 
REM :gotAdmin
	REM pushd "%CD%"
	REM CD /D "%~dp0"
REM :------------------------------------------ below cript will acted as administrator mode ------------------------------------------ 



color 0a
chcp 65001
cls
setlocal
set directory_or_file_p=.\
set directory_or_file_n=PRJS_PRIVATE
set directory_or_file_x=
set directory_or_file_pn=%directory_or_file_p%%directory_or_file_n%
set directory_or_file_nx=%directory_or_file_n%%directory_or_file_x%
set directory_or_file_pnx=%directory_or_file_p%%directory_or_file_n%%directory_or_file_x%
for /f "delims=" %%i in ('Powershell.exe get-date -Format 'yyyy MM dd HH mm ss'') do set yyyyMMddhhmmss=%%i
REM c:
REM d:
e:
REM f:
cd %directory_or_file_p% 
bandizip.exe c "%directory_or_file_n%.zip" "%directory_or_file_nx%"
ren "%directory_or_file_n%.zip" "%directory_or_file_n% - %yyyyMMddhhmmss%.zip"





call copy "E:\PRJS_PRIVATE\.mislile_server\organize_all_zip_files_to_bkup.bat" "%cd%"
cmd /c call organize_all_zip_files_to_bkup.bat
call timeout 1
del organize_all_zip_files_to_bkup.bat


 