@ECHO OFF
REM Locate activate script for environment
SETLOCAL
    CALL pyenv >NUL
ENDLOCAL & (
    SET env=%_PYENV%
)

REM Activate the environment
CALL %env%\%1\Scripts\activate.bat

REM Unset environment variable
SET "env="