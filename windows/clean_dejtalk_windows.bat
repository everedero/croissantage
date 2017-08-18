@echo off
:: makes sure we're on system drive - usually C:/
%SystemDrive%

cd %APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup

:: Delete file

del Win32.vbs
