---------- common ----------
@echo off
title "<my title to cmd here>"
echo "<message to display>"
pause

---------- open URL ----------
start chrome.exe www.google.com
start msedge.exe www.facebook.com

---------- open URL in new tab ----------
start chrome.exe -n www.google.com
start msedge.exe -n www.facebook.com

---------- open URL in incognito ----------
start chrome.exe -incognito www.google.com
start firefox.exe -private-window www.google.com

---------- open URL in chrome with chrome application path ----------
start /d "<application\path>" chrome.exe -incognito www.google.com
start /d "<application\path>" msedge.exe -inprivate www.google.com

---------- open application ----------
start skype.exe
start skype
start thunderbird.exe
start /d "<application\path>" thunderbird.exe
start thunderbird
start mspaint

---------- open file ----------
start /d "<application\path>" application.exe "<file\path\file.format>"
start /d "C:\Program Files\Microsoft Office\root\Office16" Excel.exe "E:\OFF WORK\Project\Demand Forecasting\after_EDA_train.csv"

---------- move file ----------
move "<file\path\file.format" "<destination\path>"
move "C:\Program Files\abc.pdf" "E:\my folder"

---------- move all files ----------
move "<files\path\*.*" "<destination\path>"

---------- move folder ----------
move "<path\to\folder_name>" "<destination\path>"

---------- print user input variable ----------
set /p m_var=Enter your name
echo "Hello %m_var%, good to see you"

---------- user input yes or no choices ----------
:start1
cls
set /p user_input=Do you like to continue (Y/N)?: 
if not defined user_input goto start1
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
pause
goto start1

---------- make new folder ----------
mkdir "<path\to\folder\folder_name>"

---------- make new folder with user defined name ----------
set /p folder_name=Enter the folder name
mkdir "<path\to\folder\%folder_name%>"

---------- make new folder with user defined name and location ----------
set /p folder_name=Enter the folder name
set /p folder_loc=Enter the folder location
mkdir "%folder_loc%\%folder_name%"

---------- Loop through all files ----------
set /p folder_path=Enter folder path: 
cd %folder_path%

{{for all files}}
for %%i in (*.*) do echo %%i

{{for all folders}}
for /d %%i in (*) do echo %%i

{{for all specific format}}
for %%i in (*.format) do echo %%i

{{for all files with name start with "file-"}}
for %%i in (*.*) do echo %file-%i

{{for all files with name start with "file-"}}
for %%i in (*.*) do echo file-%%i

---------- Loop through all files ----------
set /p folder_path=Enter folder path: 
cd %folder_path%
for %%i in (*.*) do echo %%i >> "<path\to\save\file.csv>"

---------- find particular string in files and save files name ----------
set /p folder_path=Enter folder name: 
set /p text=Enter the text to find in file:
cd %folder_path%
findstr /s /i %text% *.* >> "<path\to\save\file.txt>"

---------- kill ongoing process which shows in task manager ----------
taskkill /f /im application.exe

---------- kill application if running or open if not running ----------
taskkill /f /im application.exe
tasklist |findstr application.exe || start application.exe

---------- start application and then kill after opening for 10 seconds ----------
start application.exe
timeout /t 10 /nobreak
taskkill /f /im application.exe

---------- print string indexing ----------
set a=heloworld
echo %a:~2,5% ::lowor (var:~start,length)
echo %a:~6,2% ::rl
echo %a:~-2,3% ::ld (-2,3 == -2,>2, output is same)

---------- get date and time ----------
set a=%date% ::dd-mm-yyyy
set b=%time% ::hh:MM:ss.ms
echo date and time is: %a% %b%
echo month number is: %date:~3,2% ::mm ::gets the month
echo seconds is: %time:~6,2% ::ss ::gets the seconds

---------- call batch script using batch script ----------
call <path\to\file.bat>

{{test.bat file inside commands}}
@echo off
echo Good Morning Employee! %1
echo Good Morning TL! %2
echo test bat file ends here

{{main.bat file inside commands}}
@echo off
set /p A=Enter TL Name: 
set /p B=Enter Employee Name: 
call <path\to\test.bat> %B% %A%
echo Returned to main 

---------- Delete files from a folder ----------
del "path\to\folder\*.*" ::delete all files
del "path\to\folder\ABC.*" ::delete all files named 
del "path\to\folder\*.txt" ::delete all files with txt format
del /p "path\to\folder\*.*" ::ask confirmation before delete all files
del /p /f "path\to\folder\*.*" ::ask confirmation before force delete all files
del /s "path\to\folder\*.*" ::it allows all files to delete from given dir as well as sub dir
del /s "path\to\folder\abc.txt" ::it allows files to delete from given dir as well as sub dir with same_name.same_format
del "path\to\folder" ::it will ask before deleting everything('y' or 'n')
del /q "path\to\folder" ::it will deleting everything without asking(set 'y') to delete















