#> While loop
#> Arguments:
#> function -> string
#> args -> compound

data modify storage testing:stack iterator set value 0
$data modify storage testing:stack args set value {args:$(args),function:"$(function)"}
data modify storage testing:stack args.iterator set from storage testing:stack iterator
function testing:loops/iteration-fail with storage testing:stack args