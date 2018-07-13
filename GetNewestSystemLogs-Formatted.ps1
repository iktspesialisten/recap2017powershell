# Formatting
Get-EventLog -LogName system -new 3 | sort timewritten | format-table -Property timewritten, message -AutoSize
