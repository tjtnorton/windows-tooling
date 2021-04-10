# Python Scripts
A set of batch scripts for handling python virtual environments on windows.

## pyenv
Display system information on python environment:
* Directory containing all virtual environments
* Default Python version
* Name used for temporary virtual environment

## listenv
Display all available environments.

## mkenv 
Create and activate a new environment based on default version, e.g.
```
mkenv my_fancy_repo
```
Create and activate a new environment based on another python version, e.g.
```
mkenv my_fancy_repo 3.8
```
Create and activate a temporary environment based on default version:
```
mkenv
```

## workon
Activate a virtual environment, e.g.
```
workon my_fancy_repo
```

## deactivate
Turn off the current virtual environment.

## rmenv
Remove a virtual environment, e.g.
```
rmenv my_fancy_repo
```