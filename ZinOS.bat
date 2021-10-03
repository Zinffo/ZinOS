@echo off
TITLE ZinOS
:TERMINAL
SET /P M=%username%@%computername%:~$ 
IF "%M%"=="shutdown" GOTO shutdown
IF "%M%"=="exit" GOTO shutdown
IF "%M%"=="" GOTO TERMINAL
IF "%M%"=="help" GOTO help
IF "%M%"=="whoami" GOTO whoami
IF "%M%"=="ver" GOTO ver
IF "%M%"=="clear" GOTO clear
IF "%M%"=="hostname" GOTO hostname
IF "%M%"=="cat /proc/cpuinfo" GOTO CPU
IF "%M%"=="get disk size" GOTO DISK
IF "%M%"=="get bios serialnumber" GOTO SERIALNUMBER
IF "%M%"=="get cpu info" GOTO CPU
IF "%M%"=="username" GOTO USR
IF "%M%"=="reboot" GOTO rebootos
echo Command dosent exist
goto TERMINAL
:shutdown
exit
:help
echo test
goto TERMINAL
:whoami
echo %Username%
goto TERMINAL
:ver
echo ZinOS V0.1
goto TERMINAL
:clear
cls
goto TERMINAL
:hostname
echo %computername%
goto TERMINAL
:CPU
wmic cpu get name
goto TERMINAL
:DISK
wmic diskdrive get size
goto TERMINAL
:SERIALNUMBER
wmic bios get serialnumber
goto TERMINAL
:USR
echo %username%
goto TERMINAL
:rebootos
wmic os where primary = 1 reboot
goto TERMİNAL
