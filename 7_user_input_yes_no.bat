@echo off

:start1
cls
set /p user_input=Do you like to continue (Y/N)?: 
if not defined user_input goto start1
if /i %user_input%==kill goto kill1
if /i %user_input%==y goto Yes
if /i %user_input%==n (goto No) else (goto Invalid)


:Yes
echo user has entered YES
pause
goto start1

:No
echo user has entered NO
pause
goto start1

:Invalid
echo %user_input% is an Invalid entry, try again !
set user_input=
pause
goto start1

:kill1
exit

pause
exit