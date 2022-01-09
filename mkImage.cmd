cd /d %~dp0
if not exist image\Far.msi curl -sSL -o image\Far.msi https://farmanager.com/files/Far30b5888.x64.20210919.msi
if not exist image\python-setup.exe curl -sSL -o image\python-setup.exe https://www.python.org/ftp/python/3.10.1/python-3.10.1-amd64.exe
if not exist image\get-pip.py curl -sSL -o image\get-pip.py https://bootstrap.pypa.io/get-pip.py
if not exist image\mingw64.zip curl -sSL -o image\mingw64.zip https://github.com/brechtsanders/winlibs_mingw/releases/download/11.2.0-12.0.1-9.0.0-r1/winlibs-x86_64-posix-seh-gcc-11.2.0-llvm-12.0.1-mingw-w64-9.0.0-r1.zip
if not exist image\depends.zip curl -sSL -o image\depends.zip https://dependencywalker.com/depends22_x64.zip

docker build --tag editorbank/nuitka-image --no-cache --network "External" image\
