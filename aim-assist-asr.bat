@echo off
if _%1_==_payload_  goto :payload
 
:getadmin
    echo %~nx0: elevating self
    set vbs=%temp%\getadmin.vbs
    echo Set UAC = CreateObject^("Shell.Application"^)                >> "%vbs%"
    echo UAC.ShellExecute "%~s0", "payload %~sdp0 %*", "", "runas", 1 >> "%vbs%"
    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
goto :eof
 
:payload
 
::CHANGE TO YOUR PATH HERE
::cd YourPath\aim-assist
cd D:\Games\BFV\aim-assist

python assist_asr.py
-NoExit
 
echo.
echo...Script Complete....
echo.