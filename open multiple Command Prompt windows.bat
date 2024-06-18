@echo off
setlocal enabledelayedexpansion

for /l %%i in (1,1,10) do (
    start cmd
    timeout /t 1 /nobreak > nul
)

timeout /t 1 /nobreak > nul

for /l %%i in (1,1,10) do (
    for /f "tokens=2" %%j in ('tasklist /fi "imagename eq cmd.exe" /fo csv /nh') do (
        set pid=%%j
        powershell -command "(new-object -com 'Shell.Application').Windows() | foreach { $_.LocationName }"
        powershell -command "[System.Windows.Forms.SendKeys]::SendWait('%{ }')"
    )
)
