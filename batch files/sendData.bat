::copy paste the path into the command prompt and transfer data to a location that you can edit.

@ECHO OFF
D:
cd D:\Downloads\Mirror
adb devices
SET /P location=Enter your source path: 
set location=%location:"=%
:: %command: =_% example to replace all spaces in command with underscores

IF "%location%"=="" GOTO Error

ECHO "%location%". Transferring to ringtones!
PAUSE
adb push "%location%" /storage/your_device_location/Ringtones 
GOTO End

:Error
ECHO You are supposed to enter a location.
PAUSE
EXIT /B

:End
ECHO Done.
PAUSE
EXIT /B