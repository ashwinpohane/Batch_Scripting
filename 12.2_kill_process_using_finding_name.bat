@echo off
Title Batch script kill process

taskkill /f /im notepad.exe
tasklist |findstr notepad.exe || start notepad.exe
pause