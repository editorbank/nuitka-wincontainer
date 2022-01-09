# Run Nuitka in Windows docker container

What is Nuitka?
Nuitka is a Python compiler written in Python.
It is fully compatible with Python2 (2.6, 2.7) and Python3 (3.3 - 3.10).
You feed Nuitka your Python app, it does a lot of clever things, and then creates an executable or extension module, or even a Python wheel.

## Rrequirements
* OS Windiws 10+
* Installed Docker desktop
* The Docker desktop has been switched to Windows container mode.

## Make docker image
```
mkImage.cmd
```
## Use Nuitka docker image example
```
hello-to-exe.cmd
```


## Links
* [Nuitka the Python Compiler](https://nuitka.net/)
* [Container Base Images](https://docs.microsoft.com/en-us/virtualization/windowscontainers/manage-containers/container-base-images)
* [Windows base OS images](https://hub.docker.com/_/microsoft-windows-base-os-images)