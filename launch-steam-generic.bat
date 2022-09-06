@echo off

rem Extracting username and password with the tag "steam_username/steam_password"

findstr "steam_username" .env > usernames.txt
findstr "steam_password" .env > passwords.txt

rem Setting the lines to variables...

set /P steam_username=<usernames.txt
set /P steam_password=<passwords.txt

rem Deleting the temp files

del usernames.txt
del passwords.txt

rem Now the 2 variables have tags before them, remove

set steam_username=%steam_username:~15%
set steam_password=%steam_password:~15%

rem Output:

D:

cd "\apps (x86)\Steam\"

start steam.exe -silent %steam_username% %steam_password%

SETLOCAL EnableExtensions
set EXE=steam.exe
set STEAM_RUNS=1
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF NOT %%x == %EXE% (
  set STEAM_RUNS=0
  echo %EXE% is Not Running
)


if %STEAM_RUNS%==1 (
	echo "steam is running"
)

pause>nul