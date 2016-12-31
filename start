@echo off
TITLE 小说助手 v1.0
echo 小说助手 v1.0
echo Auther:Kirito
echo E-mail:i@ixh.me
:start
echo 请选择执行的功能
echo 1 每5MB分割
echo 2 每卷分割
echo 3 每章分割
echo 4 合并当前文件夹所有txt
echo h 帮助
set /p z=
if "%z%"=="1" goto 5M
if "%z%"=="2" goto j
if "%z%"=="3" goto z
IF "%z%"=="4" goto com
IF "%z%"=="h" echo 分割功能（1-3）直接运行即可
IF "%z%"=="h" echo 每5MB分割（1）使用外部程序，请允许运行
IF "%z%"=="h" echo 每5MB分割（1）输出在同名文件夹下
IF "%z%"=="h" echo 每卷分割和每章分割输出当前文件夹下
IF "%z%"=="h" echo 合并当前文件夹下txt请复制本文件到该文件夹下
IF "%z%"=="h" goto start
echo 错误的输入
pause
goto start
exit

:5M
set/p file=请把要处理的文件拖到此处：
for /f "delims=" %%a in ("%file:"=%") do (
     md "%%~na"
     split  -b 5000k "%file:"=%" "%%~na\%%~na_"
     ren "%%~na\*" "*.txt"
)
pause
exit
:j
set/p file=请把要处理的文件拖到此处：
setlocal enabledelayedexpansion
for /f "delims=" %%j in (%file%) do (
for /f "tokens=1" %%i in ("%%j") do (set r=%%i&set q=!r:~0,1!&set y=!r:~-1!
if "!q!!y!"=="第卷" (set /a n+=1)
echo %%j>>!n!.txt)
)
pause
exit
:z
set/p file=请把要处理的文件拖到此处：
setlocal enabledelayedexpansion
for /f "delims=" %%j in (%file%) do (
for /f "tokens=1" %%i in ("%%j") do (set r=%%i&set q=!r:~0,1!&set y=!r:~-1!
if "!q!!y!"=="第章" (set /a n+=1)
echo %%j>>!n!.txt)
)
pause
exit
:com
type *.txt >> 合并.txt
pause
exit