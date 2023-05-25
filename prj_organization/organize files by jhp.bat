echo "_________________________________________________________________________________________________ minimized window
REM minimized s
if not "%minimized%"=="" goto :minimized
set minimized=true
start /min cmd /C "%~dpnx0"
goto :EOF
:minimized
REM minimized e
echo "_________________________________________________________________________________________________ title
title %~n0
echo "_________________________________________________________________________________________________ echo
@echo off
echo "_________________________________________________________________________________________________ idea
@REM organize file by jhp.py 로 만들 계획이 있음.
@REM 중복이름의 파일이 덮어쓰여지는 문제를 해결하도록 directory 가 없는지 확인로직 필요.+ 파일에 timestamp 를 ms 까지 붙여서 덮어쓰는 문제 해결하는 것도 고민해보기
@REM 어떠한 디렉토리도 없으면 파일 정리 시작.
echo "_________________________________________________________________________________________________  js
setlocal
set foo =.js
for %%i in (*.js) do if not "%~nx0"=="%%~nxi" (
if not exist "%%~xi\" md "%%~xi"
move "%%i" "%%~xi"
) 
set as=document
mkdir %as%
set from_path=%cd%
set to_path=%cd%\%as%
cd .js
move "*.js" "%to_path%"
cd %from_path% 
rmdir .js  
 
echo "_________________________________________________________________________________________________  css
setlocal
set foo =.css
for %%i in (*.css) do if not "%~nx0"=="%%~nxi" (
if not exist "%%~xi\" md "%%~xi"
move "%%i" "%%~xi"
) 
set as=css
mkdir %as%
set from_path=%cd%
set to_path=%cd%\%as%
cd .css
move "*.css" "%to_path%"
cd %from_path% 
rmdir .css  
 
echo "_________________________________________________________________________________________________  txt
setlocal
set foo =.txt
for %%i in (*.txt) do if not "%~nx0"=="%%~nxi" (
if not exist "%%~xi\" md "%%~xi"
move "%%i" "%%~xi"
) 
set as=document
mkdir %as%
set from_path=%cd%
set to_path=%cd%\%as%
cd .txt
move "*.txt" "%to_path%"
cd %from_path% 
rmdir .txt  
echo "_________________________________________________________________________________________________ xls
setlocal
set foo =.xls 
for %%i in (*.xls) do if not "%~nx0"=="%%~nxi" (
if not exist "%%~xi\" md "%%~xi"
move "%%i" "%%~xi"
) 
set as=document
mkdir %as%
set from_path=%cd%
set to_path=%cd%\%as%
cd .xls
move "*.xls" "%to_path%"
cd %from_path% 
rmdir .xls 
echo "_________________________________________________________________________________________________ cell
setlocal
set foo =.cell 
for %%i in (*.cell) do if not "%~nx0"=="%%~nxi" (
if not exist "%%~xi\" md "%%~xi"
move "%%i" "%%~xi"
) 
set as=document
mkdir %as%
set from_path=%cd%
set to_path=%cd%\%as%
cd .cell
move "*.cell" "%to_path%"
cd %from_path% 
rmdir .cell
echo "_________________________________________________________________________________________________ xmind
setlocal
set foo =.xmind 
for %%i in (*.xmind) do if not "%~nx0"=="%%~nxi" (
if not exist "%%~xi\" md "%%~xi"
move "%%i" "%%~xi"
) 
set as=document
mkdir %as%
set from_path=%cd%
set to_path=%cd%\%as%
cd .xmind
move "*.xmind" "%to_path%"
cd %from_path% 
rmdir .xmind
echo "_________________________________________________________________________________________________ docx
setlocal
set foo =.docx 
for %%i in (*.docx) do if not "%~nx0"=="%%~nxi" (
if not exist "%%~xi\" md "%%~xi"
move "%%i" "%%~xi"
) 
set as=document
mkdir %as%
set from_path=%cd%
set to_path=%cd%\%as%
cd .docx
move "*.docx" "%to_path%"
cd %from_path% 
rmdir .docx
  
 
echo "_________________________________________________________________________________________________ pdf
setlocal
set foo =.pdf 
for %%i in (*.pdf) do if not "%~nx0"=="%%~nxi" (
if not exist "%%~xi\" md "%%~xi"
move "%%i" "%%~xi"
) 
set as=document
mkdir %as%
set from_path=%cd%
set to_path=%cd%\%as%
cd .pdf
move "*.pdf" "%to_path%"
cd %from_path% 
rmdir .pdf
  
echo "_________________________________________________________________________________________________ xlsx
setlocal
set foo =.xlsx 
for %%i in (*.xlsx) do if not "%~nx0"=="%%~nxi" (
if not exist "%%~xi\" md "%%~xi"
move "%%i" "%%~xi"
) 
set as=document
mkdir %as%
set from_path=%cd%
set to_path=%cd%\%as%
cd .xlsx
move "*.xlsx" "%to_path%"
cd %from_path% 
rmdir .xlsx
  
 
echo "_________________________________________________________________________________________________  png
setlocal
set foo =.png
for %%i in (*.png) do if not "%~nx0"=="%%~nxi" (
if not exist "%%~xi\" md "%%~xi"
move "%%i" "%%~xi"
) 
set as=imgs
mkdir %as%
set from_path=%cd%
set to_path=%cd%\%as%
cd .png
move "*.png" "%to_path%"
cd %from_path% 
rmdir .png  
echo "_________________________________________________________________________________________________  avif
setlocal
set foo =.avif
for %%i in (*.avif) do if not "%~nx0"=="%%~nxi" (
if not exist "%%~xi\" md "%%~xi"
move "%%i" "%%~xi"
) 
set as=imgs
mkdir %as%
set from_path=%cd%
set to_path=%cd%\%as%
cd .avif
move "*.avif" "%to_path%"
cd %from_path% 
rmdir .avif
 
echo "_________________________________________________________________________________________________  jpg
setlocal
set foo =.jpg
for %%i in (*.jpg) do if not "%~nx0"=="%%~nxi" (
if not exist "%%~xi\" md "%%~xi"
move "%%i" "%%~xi"
) 
set as=imgs
mkdir %as%
set from_path=%cd%
set to_path=%cd%\%as%
cd .jpg
move "*.jpg" "%to_path%"
cd %from_path% 
rmdir .jpg  
echo "_________________________________________________________________________________________________  jfif
setlocal
set foo =.jfif
for %%i in (*.jfif) do if not "%~nx0"=="%%~nxi" (
if not exist "%%~xi\" md "%%~xi"
move "%%i" "%%~xi"
) 
set as=imgs
mkdir %as%
set from_path=%cd%
set to_path=%cd%\%as%
cd .jfif
move "*.jfif" "%to_path%"
cd %from_path% 
rmdir .jfif  
echo "_________________________________________________________________________________________________  gif
setlocal
set foo =.gif
for %%i in (*.gif) do if not "%~nx0"=="%%~nxi" (
if not exist "%%~xi\" md "%%~xi"
move "%%i" "%%~xi"
) 
set as=imgs
mkdir %as%
set from_path=%cd%
set to_path=%cd%\%as%
cd .gif
move "*.gif" "%to_path%"
cd %from_path% 
rmdir .gif  
echo "_________________________________________________________________________________________________  jpeg
setlocal
set foo =.jpeg
for %%i in (*.jpeg) do if not "%~nx0"=="%%~nxi" (
if not exist "%%~xi\" md "%%~xi"
move "%%i" "%%~xi"
) 
set as=imgs
mkdir %as%
set from_path=%cd%
set to_path=%cd%\%as%
cd .jpeg
move "*.jpeg" "%to_path%"
cd %from_path% 
rmdir .jpeg  
echo "_________________________________________________________________________________________________  mkv
setlocal
set foo =.mkv
for %%i in (*.mkv) do if not "%~nx0"=="%%~nxi" (
if not exist "%%~xi\" md "%%~xi"
move "%%i" "%%~xi"
) 
set as=video
mkdir %as%
set from_path=%cd%
set to_path=%cd%\%as%
cd .mkv
move "*.mkv" "%to_path%"
cd %from_path% 
rmdir .mkv  
 
echo "_________________________________________________________________________________________________  mp4
setlocal
set foo =.mp4
for %%i in (*.mp4) do if not "%~nx0"=="%%~nxi" (
if not exist "%%~xi\" md "%%~xi"
move "%%i" "%%~xi"
) 
set as=video
mkdir %as%
set from_path=%cd%
set to_path=%cd%\%as%
cd .mp4
move "*.mp4" "%to_path%"
cd %from_path% 
rmdir .mp4  
 
echo "_________________________________________________________________________________________________  avi
setlocal
set foo =.avi
for %%i in (*.avi) do if not "%~nx0"=="%%~nxi" (
if not exist "%%~xi\" md "%%~xi"
move "%%i" "%%~xi"
) 
set as=video
mkdir %as%
set from_path=%cd%
set to_path=%cd%\%as%
cd .avi
move "*.avi" "%to_path%"
cd %from_path% 
rmdir .avi  
 
echo "_________________________________________________________________________________________________  webm
setlocal
set foo =.webm
for %%i in (*.webm) do if not "%~nx0"=="%%~nxi" (
if not exist "%%~xi\" md "%%~xi"
move "%%i" "%%~xi"
) 
set as=video
mkdir %as%
set from_path=%cd%
set to_path=%cd%\%as%
cd .webm
move "*.webm" "%to_path%"
cd %from_path% 
rmdir .webm  
 
echo "_________________________________________________________________________________________________  organize files by extension
for %%i in (*.*) do if not "%~nx0"=="%%~nxi" (
if not exist "%%~xi\" md "%%~xi"
move "%%i" "%%~xi"
)
echo "_________________________________________________________________________________________________  pause
pause