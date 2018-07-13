# Remoting. ITS SECURE!
# One-to-one connection 
Enter-PSSession -computername SIGURD-PC
invoke-command -ComputerName SIGURD-PC {get-eventlog -LogName system -new 3}
