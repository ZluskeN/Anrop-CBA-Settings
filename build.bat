@echo off

REM Calculating correct current folder
SET modpath=%~dp0
SET modpath=%modpath:~0,-1%

REM Remove old drive mapping
subst p: /d > nul

REM Mount current folder
subst p: "%modpath%\source"

REM Build pbo files using pboproject and check for errors
pboproject +Clean -Engine=Arma3 -Key -Noisy -P +Mod="%modpath%\@anrop_cba_settings" -F +Warnings -Z P:\cba_settings_userconfig

REM Remove drive mapping
subst p: /d
