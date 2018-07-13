clear
write-host "Displaying the objects wher the handles property is greater than 900
then it is piped to sort witch will sort then accendent from low to high"
get-process | where handles -gt 900 | sort handles
# When you do get-process, each row is the object.
# The tabs display the properties
