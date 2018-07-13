clear
clear
Write-Host "Here is a help file listing the out verb and nouns you can use with it."
Write-Host "Theese commands are used after the pipeline to output something."
get-help out* | select name

############### EXAMPLE #################
# ls | select name | out-file dirtemp.txt
# get-content dirtemp.txt                
