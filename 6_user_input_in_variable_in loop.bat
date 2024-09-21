@echo off
Title User Input in variable

echo User input in variable

:any_var
cls

set /p input=Enter the name : 

echo %input%, we are delighted to have you at the event!
pause

goto any_var