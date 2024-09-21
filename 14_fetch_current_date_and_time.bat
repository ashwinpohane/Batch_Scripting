@echo off
title fetch date and time
echo fetching current date and time

::date -> returns current Date
::time -> returns current Time

set A=%date%
echo date is: %A%

pause

set B=%time%
echo time is: %b%
pause

set C=%date% %time%
echo date and time is: %c%
pause