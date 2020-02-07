@echo off
title QuickNotes by SetLucas
echo [92m========================================================================================[0m
type logo.ascii
echo.
echo [92m========================================================================================[0m
echo.
echo [90mPress a key:[0m
echo 1/N] Add new QuickNote
echo 2/V] View QuickNotes
echo 3/S] Search QuickNotes
echo 4/P] Purge QuickNotes
echo. | set /p="[90m"
choice /c 1234nvsp
if %errorlevel%==1 AddNote.bat
if %errorlevel%==2 ViewNotes.bat
if %errorlevel%==3 SearchNotes.bat
if %errorlevel%==4 PurgeNotes.bat
if %errorlevel%==5 AddNote.bat
if %errorlevel%==6 ViewNotes.bat
if %errorlevel%==7 SearchNotes.bat
if %errorlevel%==8 PurgeNotes.bat
