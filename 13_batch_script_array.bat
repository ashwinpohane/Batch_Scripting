@echo off
title Batch Script Arrays
echo Batch Script Arrays
pause

set A=Rakesh Akash Ravi Samay

for %%i in (%A%) do echo %%i
pause

echo printing each names with 5 second delay

for %%i in (%A%) do (
echo %%i
echo He is the person
timeout /t 5 /nobreak )
pause
