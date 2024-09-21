@echo off
Title To loop and save files and folder names in excel file

set /p folder_path=Enter folder path: 
cd %folder_path%

for %%i in (*.*) do echo %%i >> "operation files\file_list.csv"
pause