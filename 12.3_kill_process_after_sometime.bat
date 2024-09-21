@echo off
title Batch script to kill process after sometime
echo kill process after sometime

start skype.exe
timeout /t 5
taskkill /f /im skype.exe