@echo off
TITLE С˵���� v1.0
echo С˵���� v1.0
echo Auther:Kirito
echo E-mail:i@ixh.me
:start
echo ��ѡ��ִ�еĹ���
echo 1 ÿ5MB�ָ�
echo 2 ÿ��ָ�
echo 3 ÿ�·ָ�
echo 4 �ϲ���ǰ�ļ�������txt
echo h ����
set /p z=
if "%z%"=="1" goto 5M
if "%z%"=="2" goto j
if "%z%"=="3" goto z
IF "%z%"=="4" goto com
IF "%z%"=="h" echo �ָ�ܣ�1-3��ֱ�����м���
IF "%z%"=="h" echo ÿ5MB�ָ1��ʹ���ⲿ��������������
IF "%z%"=="h" echo ÿ5MB�ָ1�������ͬ���ļ�����
IF "%z%"=="h" echo ÿ��ָ��ÿ�·ָ������ǰ�ļ�����
IF "%z%"=="h" echo �ϲ���ǰ�ļ�����txt�븴�Ʊ��ļ������ļ�����
IF "%z%"=="h" goto start
echo ���������
pause
goto start
exit

:5M
set/p file=���Ҫ������ļ��ϵ��˴���
for /f "delims=" %%a in ("%file:"=%") do (
     md "%%~na"
     split  -b 5000k "%file:"=%" "%%~na\%%~na_"
     ren "%%~na\*" "*.txt"
)
pause
exit
:j
set/p file=���Ҫ������ļ��ϵ��˴���
setlocal enabledelayedexpansion
for /f "delims=" %%j in (%file%) do (
for /f "tokens=1" %%i in ("%%j") do (set r=%%i&set q=!r:~0,1!&set y=!r:~-1!
if "!q!!y!"=="�ھ�" (set /a n+=1)
echo %%j>>!n!.txt)
)
pause
exit
:z
set/p file=���Ҫ������ļ��ϵ��˴���
setlocal enabledelayedexpansion
for /f "delims=" %%j in (%file%) do (
for /f "tokens=1" %%i in ("%%j") do (set r=%%i&set q=!r:~0,1!&set y=!r:~-1!
if "!q!!y!"=="����" (set /a n+=1)
echo %%j>>!n!.txt)
)
pause
exit
:com
type *.txt >> �ϲ�.txt
pause
exit