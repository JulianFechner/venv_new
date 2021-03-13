@ echo off
REM MIT License

REM Copyright (c) 2021 Julian Fechner

REM Permission is hereby granted, free of charge, to any person obtaining a copy
REM of this software and associated documentation files (the "Software"), to deal
REM in the Software without restriction, including without limitation the rights
REM to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
REM copies of the Software, and to permit persons to whom the Software is
REM furnished to do so, subject to the following conditions:

REM The above copyright notice and this permission notice shall be included in all
REM copies or substantial portions of the Software.

REM THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
REM IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
REM FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
REM AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
REM LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
REM OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
REM SOFTWARE.

echo Please enter a name for the virtual enviroment that you would like to create:
set /p venv=
cd "C:\Users\Julian Fechner\pyproj"
call "C:\Program Files\python\pyver392\python" -m venv %venv%

cd "C:\Users\Julian Fechner\pyproj\%venv%"

echo.>"C:\Users\Julian Fechner\pyproj\%venv%\LICENSE.md"

(	echo MIT License
	echo.
	echo Copyright (c^^^) 2021 Julian Fechner
	echo.
	echo Permission is hereby granted, free of charge, to any person obtaining a copy
	echo of this software and associated documentation files (the "Software"^^^), to deal
	echo in the Software without restriction, including without limitation the rights
	echo to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
	echo copies of the Software, and to permit persons to whom the Software is
	echo furnished to do so, subject to the following conditions:
	echo.
	echo The above copyright notice and this permission notice shall be included in all
	echo copies or substantial portions of the Software.
	echo.
	echo THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
	echo IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	echo FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	echo AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	echo LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
	echo OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
	echo SOFTWARE.
)>"LICENSE.md"

echo.>"C:\Users\Julian Fechner\pyproj\%venv%\requirements.txt"

(	echo pyinstaller
)>"requirements.txt"

echo Would you like to enter the created virtual enviroment? y/n
set /p choice=

IF '%choice%'=='y' GOTO yes
IF '%choice%'=='Y' GOTO yes
IF NOT '%choice%'=='y' GOTO else
IF NOT '%choice%'=='Y' GOTO else

:yes
call "C:\Users\Julian Fechner\pyproj\%venv%\Scripts\activate"
cd "C:\Users\Julian Fechner\pyproj\%venv%"
pip install --upgrade pip
pip install -r requirements.txt
python -m idlelib.idle

:else
exit
