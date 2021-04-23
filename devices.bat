@ECHO OFF
CLS
wmic path Win32_SerialPort GET DeviceID, Name

ECHO 1.Reload
ECHO 2.Exit

CHOICE /C 12 /M "continue:"

IF ERRORLEVEL 2 GOTO Exit
IF ERRORLEVEL 1 GOTO Reload

:Reload
devices.bat
GOTO End

:Exit
ECHO Exit
GOTO End

:End
