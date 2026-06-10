@echo off
set "APP_DIR=%~dp0"
cd /d "%APP_DIR%"

set "PYTHON_CMD="

where py >nul 2>nul
if not errorlevel 1 (
    py -3 --version >nul 2>nul
    if not errorlevel 1 set "PYTHON_CMD=py -3"
)

if not defined PYTHON_CMD (
    where python >nul 2>nul
    if not errorlevel 1 (
        python --version >nul 2>nul
        if not errorlevel 1 set "PYTHON_CMD=python"
    )
)

if not defined PYTHON_CMD (
    echo Python 3.10 or newer was not found.
    echo Install Python from https://www.python.org/downloads/windows/
    echo If Windows opens the Microsoft Store, disable the Python app execution aliases.
    pause
    exit /b 1
)

%PYTHON_CMD% -m pip install .

if errorlevel 1 (
    echo Installation failed.
    pause
    exit /b 1
)

echo Installation complete.
echo You can now run experiment-logbook or Experiment_Logbook_Generator.bat.
pause
