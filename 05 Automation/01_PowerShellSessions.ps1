# then $sessions = new-PSSession
# get-pssessions will give you a list of sessions open
# now you can do icm -session {$var=2}
# icm -session {$var}
# if you do icm {$var=2}
# THIS PROCESS IS ALSO FAAAAASTER 
# icm {$var}
# woops the variable is gone, because the console died. 
################################################################################
# You can have multiple sessions:
# $servers = 's1', 's2'
# $s = New-PSSession -ComputerName $servers
# Now consider you need to install web-server on theese two machines,
# it could be 500 machines. Check it out.
# icm -serssion $s {install-windowsfeature web-server}
# This goes One To Many so it will install it to all servers simountaninsly
