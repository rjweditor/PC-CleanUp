# Run SFC scan
Write-Host "Running SFC scan..."
sfc /scannow

# Run DISM online repair (1 of 2)
Write-Host "Running DISM online repair (1 of 2)..."
DISM /Online /Cleanup-Image /RestoreHealth

# Run DISM online repair (2 of 2)
Write-Host "Running DISM online repair (2 of 2)..."
DISM /Online /Cleanup-Image /RestoreHealth /Source:WIM:X:\Sources\Install.wim:1 /LimitAccess

# Run Disk Cleanup
Write-Host "Running Disk Cleanup..."
Start-Process cleanmgr -ArgumentList "/sagerun:1" -Wait

# Restart the PC
Write-Host "Restarting the PC..."
Restart-Computer -Force

