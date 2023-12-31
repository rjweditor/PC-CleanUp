@echo off
echo Running SFC scan...
sfc /scannow

echo Running DISM online repair (1 of 2)...
DISM /Online /Cleanup-Image /RestoreHealth

echo Running DISM online repair (2 of 2)...
DISM /Online /Cleanup-Image /RestoreHealth /Source:WIM:X:\Sources\Install.wim:1 /LimitAccess

echo Running Disk Cleanup...
cleanmgr /sagerun:1

echo Restarting the PC...
shutdown /r /t 10 /f