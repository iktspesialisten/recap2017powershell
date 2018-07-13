# You can add new properties to objects ;)
dir | select -Property Name, @{name='CreationDate';expression={$_.creationtime}}
# Here i crated a property to dir called CreationDate!