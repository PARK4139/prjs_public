title %~n0
@echo off
chcp 65001
setlocal
set ip=172.30.1.85
REM set ip=172.30.1.255
REM set ip=172.30.1.92
set port=8000
set zip_file=Desktop.zip


echo "___________________________________________________________________________ Desktop.zip
cd "E:\PRJS_PRIVATE\.mislile_server"
py AI_TTS.py "다운로드를 시작합니다"
timeout 2
taskkill /im alsong.exe /f


cd "E:\`\downloaded"
echo "%cd% 에서 다운로드를 시작합니다"
call curl -O http://%ip%:%port%/%zip_file%


cd "E:\PRJS_PRIVATE\.mislile_server"
py AI_TTS.py "다운로드를 완료하였습니다"
timeout 2


cd "E:\`\downloaded"
call bandizip.exe bx %zip_file%


cd "E:\PRJS_PRIVATE\.mislile_server"
py AI_TTS.py "압축해제를 완료하였습니다"
timeout 2


cd "E:\`\downloaded"
del %zip_file%


cd "E:\PRJS_PRIVATE\.mislile_server"
py AI_TTS.py "압축파일 삭제를 완료하였습니다"
timeout 2


taskkill /im alsong.exe /f
REM pause