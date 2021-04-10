@ECHO OFF
REM Determine python version for virtual environment
SETLOCAL
    REM Identify the environment parameters
    CALL pyenv >NUL
    IF "%1"=="" (SET env=tmp) ELSE (SET env=%1)
    IF "%2"=="" (SET ver=%_PYVER%) ELSE (SET ver=%2)

    REM Build the environment
    py -%ver% -m venv %_PYENV%\%env% >NUL
    ECHO Created virtual environment: %env%; Python Version %ver%
ENDLOCAL & (SET _ENV=%env%)

REM Activate new environment
CALL workon %_ENV%

REM Upgrade pip
CALL python -m pip install -q --upgrade pip >NUL
ECHO Upgraded pip to latest version.

REM Cleanup env vars
SET "_ENV="