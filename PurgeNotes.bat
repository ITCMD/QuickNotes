@echo off
title Purge Notes
setlocal EnableDelayedExpansion
cls
echo This will back up all of your notes into one text file that will not show up in QuickNotes, 
echo but is still accessable through Windows Explorer.
echo Continue?
choice
if %errorlevel%==2 exit /b
rem create date file name
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YY=%dt:~2,2%" & set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"
set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%"

set "datestamp=%YYYY%%MM%%DD%" & set "timestamp=%HH%%Min%%Sec%"
set "fullstamp=%YYYY%-%MM%-%DD%_%HH%-%Min%-%Sec%"
set fn=Notes\%fullstamp%.txt
echo [90mBackup name: "%fn%"
echo BACKUP ON %date% - %time% >"%fn%"
echo ======================================================================================================================== >>"%fn%"
for /f "tokens=*" %%A in ('dir /b "Notes\*.Note"') do (
	for %%c in ("Notes\%%~A") do (set "fldate=%%~tc")
	echo # # # # !fldate! >>"%fn%"
	type "Notes\%%~A"  >>"%fn%"
	echo ======================================================================================================================== >>"%fn%"
)
del /f /q num.ini
del /f /q "Notes\*.Note"
echo [92mCompleted backup. Opening file . . .[0m
start "" "%fn%"
echo [90mPress any key to exit . . .[0m
pause>nul
exit /b