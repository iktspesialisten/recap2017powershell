# In this example you see the special parameter $_ and filtering.
# Filtering is important!!
# This will be equalent to the objects passing through the pipeline.
# In this example, $_ will be the service objects and what we are using
# here is called a filter. It will take the status of the objects,
# compare them to the staus and diplay only the running services.
# then it will filter it even more with the name having a b at the start.
get-service | where {$_.status -eq "running" -and $_.name -like "b*"}
