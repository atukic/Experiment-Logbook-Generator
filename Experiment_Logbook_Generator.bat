@echo off
set "APP_DIR=%~dp0"
cd /d "%APP_DIR%"

where experiment-logbook-gui >nul 2>nul
if errorlevel 1 (
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
        echo Run Install_Experiment_Logbook_Generator.bat after installing Python.
        pause
        exit /b 1
    )
    %PYTHON_CMD% -m experiment_logbook
) else (
    experiment-logbook-gui
)
if errorlevel 1 pause
