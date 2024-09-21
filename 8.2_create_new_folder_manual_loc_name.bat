@echo off
Title Create new Folder, folder and path given by user

set /p folder_name=Enter the new folder name: 
set /p folder_loc = Enter the location of new folder: 

set new_path = %folder_loc%\%folder_name%

mkdir %new_path%

echo folder created at %new_path%

pause