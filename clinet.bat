::Coded By _mortza_
::The Donwloder Using lux APL
@echo off
title DarcyYT
color 0E
setlocal
setlocal enableextensions enabledelayedexpansion
cd "%~dp0"
set Ver="Beta 0.0.0"

::----------------------------------------------------------
::config
::start allow ...
:Session
echo --       
ping localhost -n 1.5 >nul        
cls
echo ^\                
ping localhost -n 1.5 >nul
cls
ping localhost -n 1.5 >nul
echo ^|                
ping localhost -n 1.5 >nul
cls
ping localhost -n 1.5 >nul
echo ^/                
ping localhost -n 1.5 >nul
cls
ping localhost -n 1.5 >nul
echo --               
ping localhost -n 1.5 >nul
cls
ping localhost -n 1.5 >nul
echo ^\                
ping localhost -n 1.5 >nul
cls
echo ^|                
ping localhost -n 1.5 >nul
cls
ping localhost -n 1.5 >nul
echo ^/                
ping localhost -n 1.5 >nul
cls


::-----------------------------------------------------------




:Permissions

>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
echo.
echo   Requesting Administrative ...
echo   Press YES in UAC Prompt to Continue
echo.

    goto UACPrompt
) else ( goto gotAdmin ) 
:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    exit /B
:gotAdmin
    if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
    pushd "%CD%"
    CD /D "%~dp0"
    



::----------------------------------------------------------
::main



:main
cls
mode con cols=90 lines=50
call Banner.py
ECHO.                 ^_^_                                            ^_^_
echo                    ^| 1) Video Downloader                      ^|
ECHO.
echo                    ^| 2) Music Downloader                      ^|
echo.
echo                    ^| 3) Proxy(coming soon...)                  ^|
echo.
echo                    ^| 4)Error Help 
echo.
echo                    ^| 5)exit                                   ^|
ECHO.                 ^_^_                                            ^_^_
echo                   ^|-------------------------------------------^|
echo.
echo.
set /p d=Select:
if /I "%d%" EQU "1" goto :Ved 
if /I "%d%" EQU "2" goto :Mus 
if /I "%d%" EQU "3" goto :PX 
if /I "%d%" EQU "4" goto :EH 
if /I "%d%" EQU "5" goto exit
pause >NUL 



::----------------------------------------------------------
::Video downloader 



:Ved
echo --       
ping localhost -n 1.5 >nul        
cls
echo ^\                
ping localhost -n 1.5 >nul
cls
ping localhost -n 1.5 >nul
echo ^|                
ping localhost -n 1.5 >nul
cls
ping localhost -n 1.5 >nul
echo ^/                
ping localhost -n 1.5 >nul
cls
ping localhost -n 1.5 >nul
echo --               
ping localhost -n 1.5 >nul
cls
ping localhost -n 1.5 >nul
echo ^\                
ping localhost -n 1.5 >nul
cls
echo ^|                
ping localhost -n 1.5 >nul
cls
ping localhost -n 1.5 >nul
echo ^/                
ping localhost -n 1.5 >nul
cls
echo.
echo                  -------------^_^_^_^_^_^_^_^_-------------
echo                  ^|               DarcyYT               ^|
echo                  ------------Video downloader----------------
echo                      =================================
echo                  Selcet Number You Would To Download
echo.
echo                   1) Download Video 
echo                    2) Download Youtube Video With SUB(df:english)
echo                     3) Download Video With Proxy..(HTTP)
echo                      =================================

set /p d=Select:
if /I "%d%" EQU "1" goto :1 
if /I "%d%" EQU "2" goto :2 
if /I "%d%" EQU "3" goto :3
:1
cls
echo                  -------------^_^_^_^_^_^_^_^_-------------
echo                  ^|               DarcyYT               ^|
echo                  -------------Video Doenloader-------------
echo                  ^|Enter Your URL :
set /p urv=
set urv=%urv%
echo                  ^|Information Your Video^|
echo                  ^|List of available Video:
echo                ^|-------------------------------------------^|
dll.exe -i "%urv%"

echo.
dll.exe -O "DarcyYT-yt-no-sub" "%urv%"
cls
echo                ^|-------------------------------------------^|
echo                           Retry to downlod?(y/n) 
set /p anwer=
if  %anwer%==y (
    lux -retry
) else (
    goto :main
) 
:2
cls 
echo                  -------------^_^_^_^_^_^_^_^_-------------
echo                  ^|               DarcyYT               ^|
echo                  -------------Video with Sub---------------
echo                  ^|Download With Sub...
echo                  ^|Enter Your URL :
set /p urv=           
set urv=%urv%         ^|                                        
echo                  ^|Information Your Video^|
echo                  ^|List of available Video:
echo                ^|-------------------------------------------^|
dll.exe -i "%urv%"
dll.exe -C "%urv%"
goto :status

:3
cls
echo.
echo                  -------------^_^_^_^_^_^_^_^_-------------
echo                  ^|               DarcyYT               ^|
echo                  ------------------Proxy-------------------
echo.
echo                 ^|-Note:
echo                 ^|-The Part Of Proxy ADD for donwload faster or add some links....
echo                 ^|-This part not Complated....
echo                 ^|But yes work....
echo.
echo Enter Your URL:
set /p urv=
set urv=%urv%
set /p Prox=Enter Your Proxy 
set Prox=%Prox%
::----------------------------------------------------------------------------------------In Working...
::---------------------------------------------------------------------------------------Not Complated...
dll.exe -i "%urv%" 
echo.
echo                ^|-------------------Done--------------------^|
pause
goto :status 




:status
cls
echo                ^|-------------------------------------------^|
echo                                    Status
echo plaese wait ...
ping -n www.google.com >nul
if not errorlevel 1 goto :noterror
if errorlevel 1 goto :error 
:noerror 
echo  In net.....
pause
goto :main
:error
echo  no internet 
echo    Pls connect to internet...
pause
goto :main

echo                                No WorkSpace...
echo                ^|-------------------------------------------^|                          
pause
goto :main



::----------------------------------------------------------
::music downloader



:Mus 
cls
echo.
echo                  -------------^_^_^_^_^_^_^_^_-------------
echo                  ^|               DarcyYT               ^|
echo                  ------music Downloader From Youtube-------
echo.
echo                  ^|Enter Your URL:
set /p urv=
set urv=%urv%
echo Still Working On.....
echo Please Tell on Discord.....
echo.

echo.
echo                ^|-------------------------------------------^|
pause
goto :main
exit





::----------------------------------------------------------
::Proxy Coming Soon..
::but for now we using the youtube-dl for nothing :/
:PX 
echo Still working on...
echo Plse Tell On discord For update,...
pause 
goto :main 
::----------------------------------------------------------------------------------------In Working...
::---------------------------------------------------------------------------------------Not Complated...



::----------------------------------------------------------
::Instagram Downloder...
::Coming Soon...
:IDN 
echo                  -------------^_^_^_^_^_^_^_^_-------------
echo                  ^|               DarcyYT               ^|
echo                  ------------------------------------------
echo.                 ^|Still in Working...
echo                  ^|Enter Your URL:
set /p urv=
set urv=%urv%
lux "%urv%%"
echo                ^|-------------------------------------------^|
pause 
::----------------------------------------------------------------------------------------In Working...
::---------------------------------------------------------------------------------------Not Complated...
goto :main


::Error Help
:EH
echo if any error you have
echo Tell me on discord...
echo ID Discord : ( mortza#3700 )
pause 
goto :main