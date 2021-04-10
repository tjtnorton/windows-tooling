@ECHO OFF
REM Do nothing if we are not in an venv
IF %VIRTUAL_ENV%=="" (EXIT /B)

REM Store path to env
SETLOCAL
    CALL pyenv >NUL
ENDLOCAL & (
    SET _TMP_ENV=%_PYENV%\%_PYTMP%
    SET _ENV=%VIRTUAL_ENV%
)

REM Deactivate venv and remove in the case it was a tmp env
CALL %_ENV%\Scripts\deactivate.bat
IF %_ENV% == %_TMP_ENV% (
    ECHO Removing %_ENV%
    CALL rd /s /q %_ENV%
)
REM Cleanup env vars
SET "_TMP_ENV="
SET "_ENV="