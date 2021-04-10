@ECHO OFF
REM Variables for managing python environments
SETLOCAL
    SET "env=%USERPROFILE%\Environments"
    SET "ver=3.7"
    SET "tmp=tmp"
    ECHO Environment path: %env%
    ECHO Default Python version: %ver%
    ECHO Temporary environment name: %tmp%
ENDLOCAL & (
    SET "_PYENV=%env%"
    SET "_PYVER=%ver%"
    SET "_PYTMP=%tmp%"
)