@echo off
 
echo Checking for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
 
echo Permission check result: %errorlevel%
 
REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
echo Requesting administrative privileges...
goto UACPrompt
) else ( goto gotAdmin )
 
:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
 
echo Running created temporary "%temp%\getadmin.vbs"
timeout /T 2
"%temp%\getadmin.vbs"
exit /B
 
:gotAdmin
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
pushd "%CD%"
CD /D "%~dp0" 
 
echo Batch was successfully started with admin privileges
echo .
cls
Title Sandbox Installer
 
pushd "%~dp0"
 
dir /b %SystemRoot%\servicing\Packages\*Containers*.mum >sandbox.txt
 
for /f %%i in ('findstr /i . sandbox.txt 2^>nul') do dism /online /norestart /add-package:"%SystemRoot%\servicing\Packages\%%i"
 
del sandbox.txt
 
Dism /online /enable-feature /featurename:Containers-DisposableClientVM /LimitAccess /ALL
 
pause