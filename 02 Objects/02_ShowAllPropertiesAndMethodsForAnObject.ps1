# Using get-member to see all properties and methods of an object.
get-service -name bits | get-member
# The next line uses two pipes, selecting what you want, sort them decending
get-childitem | select -property name, length | sort length -decending