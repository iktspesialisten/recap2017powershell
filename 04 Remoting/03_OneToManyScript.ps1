# wrapping up remoting.
Invoke-Command -computername dc,s1,s2 {get-eventlog -LogName system -new 3}
# Theese are objects.
Invoke-Command -computername dc,s1,s2 {get-eventlog -LogName system -new 3} | sort timewritten | format-table -Property timewritten, message -autosize


