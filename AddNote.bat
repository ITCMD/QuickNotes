@echo off
echo [92m========================================================================================[0m
type logo.ascii
echo.
echo [92m========================================================================================[0m
echo.
title Add QuickNote
if not exist num.ini (echo 1)> num.ini
set /p number=<"num.ini"
if not exist "%cd%\Notes\" md "%cd%\Notes\"
set /a newnum= %number% + 1
(echo %newnum%) > num.ini
call Get-Clipboard
call Get-Clipboard >"Notes\%number%.note"
echo [92mNote Added!
timeout /t 3 >nul