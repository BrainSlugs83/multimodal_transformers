@echo off
python test.py
if ERRORLEVEL 1 (
	ECHO "test.py failed."
	exit /b 1
)
where cp.bat > nul
if ERRORLEVEL 1 ( 
	ECHO "cp.bat not in path."
	exit /b 1
)

where mv.bat > nul
if ERRORLEVEL 1 ( 
	ECHO "mv.bat not in path."
	exit /b 1
)

where wget.bat > nul
if ERRORLEVEL 1 ( 
	ECHO "wget.bat not in path."
	exit /b 1
)
ECHO Looks good.
