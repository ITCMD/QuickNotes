@echo off
setlocal EnableDelayedExpansion
:top
cls
echo [92m========================================================================================[0m
type logo.ascii
echo.
echo [92m========================================================================================[0m
echo.
echo Enter Query to search in notes:
set /p query=">"
cls
echo Searching for [90;4m%query%[0m . . .
echo [40;92m========================================================================================================================
set num=1
for /f "tokens=*" %%A in ('dir /b /O-D "Notes\*.note"') do (
	find "%query%" "Notes\%%~A" >nul
	if !errorlevel!==0 (
		set "Note!num!=Notes\%%~A"
		for %%c in ("Notes\%%~A") do (set "fldate=%%~tc")
		echo [92m[!num!] [90m!fldate![0m ^| [90m%%~A[0m
		echo.
		echo | set /p="[107;30m "
		type "Notes\%%~A"
		echo [40;92m========================================================================================================================
	)
)
echo [90mEnd of results. Enter a number line to copy or enter X to exit . . .
set /p number=">"
if /i "%number%"=="X" exit /b
if "!Note%number%!"=="" (
	echo Line not found . . .
	pause >nul
	goto top
)
type "!Note%number%!" | clip
echo [92mCopied to clipboard![0m
echo Press any key to exit . . .
pause >nul
exit /b