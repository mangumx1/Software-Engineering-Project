@ECHO OFF
set PATH=%PATH%;%CD%\c\bin\
gmake
del *.o
cls
@echo webserver.exe successfully compiled.

@echo To start with defaults, just type 'webserver' in this console.
@echo For custom variables type:
@echo   'webserver -p [PORTNUM] -d [Rootdir]'

@echo Wherer PORTNUM is the port number you want and
@echo Rootdir is the directory of your site.
cmd