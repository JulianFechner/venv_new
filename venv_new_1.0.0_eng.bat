@ echo off
echo Please enter the name for the virtual enviroment that you would like to create:
set /p venv=
cd C:\path\to\venv-directory
call "C:\path\to\pyver\py391\python" -m venv %venv%

echo Would you like to enter the created virtual enviroment? y/n
set /p choice=

IF '%choice%'=='y' GOTO yes
IF '%choice%'=='Y' GOTO yes
IF NOT '%choice%'=='y' GOTO else
IF NOT '%choice%'=='Y' GOTO else

:yes
call "C:\path\to\%venv%\Scripts\activate.bat"
cd C:\path\to\%venv%
python -m idlelib.idle
exit

:else
exit