@echo off

IF "%~1"=="" GOTO USAGE
IF NOT "%~3"=="" GOTO USAGE

IF "%~2"=="" GOTO HAVE_1


:HAVE_2
	powershell -Command "gci -recu -inc '%~1' | select-string -Pattern '%~2' -ErrorAction SilentlyContinue;"
	exit /b 0

:HAVE_1
	powershell -Command "gci -recu | select-string -Pattern '%~1' -ErrorAction SilentlyContinue;"
	exit /b 0

:USAGE
	ECHO WRONG NUMBER OF PARAMS

	exit /b 1