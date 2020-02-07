@echo off
setlocal EnableDelayedExpansion
title Quick Notes (latest notes) by SetLucas
rem https://github.com/ITCMD/QuickNotes
echo Latest Notes:
echo [92m========================================================================================================================
set num=1
for /f "tokens=*" %%A in ('dir /b /o-D "%cd%\Notes\*.Note"') do (
	for %%c in ("Notes\%%~A") do (set "fldate=%%~tc")
	set "text!num!=%%~A"
	echo [90m!fldate![0m ^| [90m%%~A[0m
	echo.
	echo | set /p="[107;30m "
	type "Notes\%%~A"
	echo [40;92m========================================================================================================================
	set /a num+=1
	if "!num!"=="3" (
		echo [90mPress N to view next page, Press 1 or 2 to copy text . . .[0m
		set num=1
		choice /c 12N
		if !errorlevel!==1 (
			type "Notes\!text1!" | clip
			cls
			call :echocopy
			pause>nul
			exit /b
		)
		if !errorlevel!==2 (
			type "Notes\!text2!" | clip
			cls
			call :echocopy
			pause>nul
			exit /b
		)
		cls
		call :echoline
	)
)
echo End of list.[0m
echo [90mPress any key to exit . . .
pause >nul

:echoline
echo [40;92m========================================================================================================================
exit /b

:echocopy
echo [92mCopied Text to clipboard.[0m
echo [90mPress any key to exit . . .[0m
exit /b