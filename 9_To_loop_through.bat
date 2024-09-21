@echo off
Title To loop through files

set /p folder_path=Enter folder path: 
cd %folder_path%

:: get all file names in folder_path
echo "---------- all files only ----------"
for %%i in (*.*) do echo %%i
pause

:: get all folder names in folder_path
echo "---------- all folders only ----------"
for /d %%i in (*) do echo %%i
pause

:: get all files with specific file name and format
echo "---------- files with .txt format ----------"
for %%i in (*.txt) do echo %%i
pause

:: get all files and folder names with path in folder_path
echo "---------- all files and folders ----------"
for /r %%j in (*) do echo %%j

pause