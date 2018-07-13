# This command list all features for a server
get-WindowsFeature 
# There is a feature called Windows PowerShell web Access!!
# Pretty cool! 
install-WindowsFeature WindowsPowerShellWebAccess
# Run this on your server!
# Its going to install IIS. When this is install we will also get
# a module with 6 cmdlets and there are some cool features!
get-help *pswa* # powershell web access
# install a powershell web application
install-PswawebApplication -useTestCertificate
# Who is alowed to use this?
get-help *pswa*
Add-PswaAuthorizationRule -ComputerName SIGURD-PC -UserName Sigurd

start iexplore https://SIGURD-PC/pswa 
# when you go to production you need a web sertificate not only the
# test certificate

# You have now PowerShell on a web page! You can access PowerShell
# from your phone when you are on vacation! ooOOooOOoOoOoOOo

############################# WARNING ##############################
# REMEMBER THIS IS AN EXAMPLE SCRIPT. IT IS NOT VERY SAFE IT IS JUST
# A WALKTHROUGH OF THE COMMANDS TO SET UP A SERVER FOR TESTING
# PURPOSES! 