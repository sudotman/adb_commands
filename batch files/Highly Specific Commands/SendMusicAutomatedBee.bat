@ECHO OFF
D:
cd D:\Downloads\Mirror
adb devices

set location="D:\Zenfone\Music"
:: %command: =_% example to replace all spaces in command with underscores

IF "%location%"=="" GOTO Error

ECHO "%location%". Transferring to ringtones!
PAUSE
adb push "%location%" /storage/3248-0A10/Music
GOTO End

:Error
ECHO You are supposed to enter a location.
PAUSE
EXIT /B

:End
ECHO Done.
PAUSE
EXIT /B