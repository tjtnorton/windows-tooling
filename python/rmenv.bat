@ECHO OFF
SETLOCAL
    CALL pyenv >NUL
ENDLOCAL & SET _ENV=%_PYENV%\%1

REM Check if env is currently active, and deactivate if necessary
IF "%VIRTUAL_ENV%"=="%_ENV%" (CALL deactivate)

REM Delete repo
CALL rd /s /q %_ENV%

REM Clear env variables
SET "_ENV="