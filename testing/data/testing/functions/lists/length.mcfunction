#> Returns length of list
#> Arguments:
#> list -> list

$data modify storage testing:stack list set value $(list)
data modify storage testing:stack args set value {function:"testing:lists/exists",args:{}}
function testing:loops/while with storage testing:stack args
return run data get storage testing:stack list-length