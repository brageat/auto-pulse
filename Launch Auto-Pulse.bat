@echo off
setlocal
rem ==========================================================
rem  Auto-Pulse launcher
rem  Double-click to start Auto-Pulse. If AutoHotkey v2 is not
rem  installed, it shows a reminder (with an OK button) instead.
rem  (auto-pulse.ahk can't show that itself -- it needs
rem  AutoHotkey in order to run at all.)
rem ==========================================================

set "SCRIPT=%~dp0auto-pulse.ahk"

rem Look for AutoHotkey v2 in the usual install locations.
set "AHK="
for %%P in (
  "%ProgramFiles%\AutoHotkey\v2\AutoHotkey64.exe"
  "%ProgramFiles%\AutoHotkey\v2\AutoHotkey32.exe"
  "%LOCALAPPDATA%\Programs\AutoHotkey\v2\AutoHotkey64.exe"
  "%LOCALAPPDATA%\Programs\AutoHotkey\v2\AutoHotkey32.exe"
) do if not defined AHK if exist "%%~P" set "AHK=%%~P"

if not defined AHK goto noahk
if not exist "%SCRIPT%" goto noscript

start "" "%AHK%" "%SCRIPT%"
exit /b 0

:noahk
powershell -NoProfile -Command "Add-Type -AssemblyName System.Windows.Forms|Out-Null;[void][System.Windows.Forms.MessageBox]::Show('Auto-Pulse needs AutoHotkey v2, which does not appear to be installed.'+[Environment]::NewLine+[Environment]::NewLine+'Install it (free) from:  https://www.autohotkey.com/'+[Environment]::NewLine+[Environment]::NewLine+'Then run Auto-Pulse again.','Auto-Pulse - AutoHotkey required','OK','Warning')"
exit /b 1

:noscript
powershell -NoProfile -Command "Add-Type -AssemblyName System.Windows.Forms|Out-Null;[void][System.Windows.Forms.MessageBox]::Show('Could not find auto-pulse.ahk next to this launcher. Keep both files in the same folder.','Auto-Pulse','OK','Warning')"
exit /b 1
