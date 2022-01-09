# ESCAPE=`
FROM mcr.microsoft.com/windows/servercore:20H2-KB5008212
ENV PYTHONIOENCODING UTF-8
##ENV PYTHON_VERSION 3.10.1
##ENV PYTHON_RELEASE 3.10.1

COPY ./* ./
RUN cmd /c install.cmd

#CMD ["nuitka"]
#CMD ["python"]
