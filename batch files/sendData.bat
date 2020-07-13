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
adb push "%location%" /storage/3248-0A10/Ringtones 
GOTO End

:Error
ECHO You are supposed to enter a location.
PAUSE
EXIT /B

:End
ECHO Done.
PAUSE
EXIT /B