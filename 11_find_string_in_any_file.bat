@echo off
Title Find text in file and store in specific file

set /p folder_path=Enter folder name: 
set /p text=Enter the text in file: 
set /p target=Enter the path to save file location and name: 

cd %folder_path%

findstr /s /i %text% *.* >> "%target%\11_found_%text%.txt"

::type "help findstr" in cmd to get more