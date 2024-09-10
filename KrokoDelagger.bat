@echo off
:: Stop unnecessary services
echo Stopping unnecessary services...
net stop "Windows Search"
net stop "Superfetch"
net stop "SysMain"

:: Clear temporary files
echo Clearing temporary files...
del /s /q %temp%\*
del /s /q C:\Windows\Temp\*

:: Free up memory by closing unnecessary programs
echo Closing background applications...
taskkill /F /IM OneDrive.exe
taskkill /F /IM SkypeApp.exe
taskkill /F /IM YourPhone.exe
taskkill /F /IM MicrosoftEdge.exe

:: Flush DNS cache (improves network speed)
echo Flushing DNS cache...
ipconfig /flushdns

:: Disk cleanup tool
echo Running Disk Cleanup...
cleanmgr /sagerun:1

:: Notify completion
echo System performance optimized.
pause
