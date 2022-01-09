cd hello
call ..\nuitka-container cmd /c nuitka --onefile hello.py
if exist hello.exe hello.exe
cd ..