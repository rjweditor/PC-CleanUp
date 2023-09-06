# PC-CleanUp
Maintenace Shell Script for General PC Health (both in Power Shell and Batch)

# System Repair Script

This script performs the following actions:

1. Runs an SFC scan to check for corrupted system files.
2. Runs a DISM online repair to repair any corrupted system files that are found by the SFC scan.
3. Runs a Disk Cleanup to free up disk space.
4. Restarts the PC.

To use this script, save it as a `.bat` file and run it from the command prompt.

## Commands

* `@echo off` - Turns off command echoing. This prevents the script from displaying the commands as they are executed.
* `echo Running SFC scan...` - Displays a message to the user indicating that the SFC scan is starting.
* `sfc /scannow` - Runs an SFC scan to check for corrupted system files.
* `echo Running DISM online repair (1 of 2)...` - Displays a message to the user indicating that the first DISM online repair is starting.
* `DISM /Online /Cleanup-Image /RestoreHealth` - Runs a DISM online repair to repair any corrupted system files that are found by the SFC scan.
* `echo Running DISM online repair (2 of 2)...` - Displays a message to the user indicating that the second DISM online repair is starting.
* `DISM /Online /Cleanup-Image /RestoreHealth /Source:WIM:X:\Sources\Install.wim:1 /LimitAccess` - Runs a second DISM online repair to repair any additional corrupted system files.
* `echo Running Disk Cleanup...` - Displays a message to the user indicating that the Disk Cleanup is starting.
* `cleanmgr /sagerun:1` - Runs the Disk Cleanup to free up disk space.
* `echo Restarting the PC...` - Displays a message to the user indicating that the PC is restarting.
* `shutdown /r /t 10 /f` - Restarts the PC after 10 seconds.

## Notes

* This script requires administrator privileges to run.
* The DISM online repair may take some time to complete.
* The Disk Cleanup may also take some time to complete.

## Author

This script was created by Robert Williams
