clear

Write-Host "Setting the directory to the PowerShell working directory..."
cd $HOME\Documents\WindowsPowerShell\
Write-host "Setting up aliases..."
set-alias edit notepad
set-alias gm Get-Member