msiexec /i Far.msi /log Far.log /qn INSTALLDIR=C:\Far
powershell Expand-Archive -Force -Path mingw64.zip -DestinationPath C:\\
python-setup.exe /quiet InstallAllUsers=1 TargetDir=C:\\Python PrependPath=0 Shortcuts=0 Include_doc=0 Include_pip=0 Include_test=0
setx /m PATH "C:\mingw64\bin;C:\Python\Scripts;C:\Python;%PATH%;C:\Users\%USERNAME%\AppData\Local\Nuitka\Nuitka\depends\x86_64;C:\Far"
set PATH=C:\mingw64\bin;C:\depends;C:\Python\Scripts;C:\Python;%PATH%
python --version
python get-pip.py --no-warn-script-location
pip --version
pip install -U nuitka zstandard
powershell Expand-Archive -Force -Path depends.zip -DestinationPath C:\\Users\\%USERNAME%\\AppData\\Local\\Nuitka\\Nuitka\\depends\\x86_64
if exist C:\Users\%USERNAME%\AppData\Local\Nuitka\Nuitka\depends\x86_64\depends.exe del /q depends.zip
if exist C:\mingw64\bin\not.exe del /q mingw64.zip
if exist C:\Python\python.exe del /q python-setup.exe
if exist C:\Python\Scripts\pip.exe del /q get-pip.py
if exist C:\Far\Far.exe del /q Far.msi
if exist C:\Far\Far.exe del /q Far.log
@echo Install done.