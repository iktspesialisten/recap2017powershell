# More on get-member. This can retreive not only information about
# what an object has for properties and methods, but also what actual
# commandlets has for properties and methods. neat!
get-eventlog -logname system -newest 5 | Select -property EventiD, TimeWritten, Message | sort -Property TimeWritten # | ConvertTo-html | out-file c:\temp\error.txt
# Here you see that get-eventlog has properties like EvemtID,
# TimeGenerated and message to pick a few.
