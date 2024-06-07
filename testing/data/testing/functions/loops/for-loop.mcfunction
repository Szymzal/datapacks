#> Runs function with increasing iterator `i` `loops` times
#> Arguments:
#> function -> string
#> loops -> int
#> args -> compound

data modify storage testing:stack iterator set value 0
$data modify storage testing:stack args set value {args:$(args),function:"$(function)",loops:$(loops)}
data modify storage testing:stack args.iterator set from storage testing:stack iterator
function testing:loops/iteration with storage testing:stack args