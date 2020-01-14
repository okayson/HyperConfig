
@echo off
setlocal

set dt1=%date%
set dt=%dt1:~0,4%%dt1:~5,2%%dt1:~8,2%

set tm1=%time%
set tm2=%tm1: =0%
set tm=%tm2:~0,2%%tm2:~3,2%%tm2:~6,2%

set ThisDir=%~dp0
set HyperConfigDir=%USERPROFILE%\AppData\Roaming\Hyper
set HyperConfigFile=.hyper.js
set HyperConfigBakupFile=%HyperConfigFile%.%dt%-%tm%

cp "%HyperConfigDir%\%HyperConfigFile%" "%HyperConfigDir%\%HyperConfigBakupFile%"
echo Backup ... done (%HyperConfigDir%\%HyperConfigBakupFile%)

cp "%ThisDir%\%HyperConfigFile%" "%HyperConfigDir%\%HyperConfigFile%"
echo Update ... done


