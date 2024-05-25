$data modify storage testing:stack iterator set value $(iterator)
$data modify storage testing:stack args set value $(args)
data modify storage testing:stack args.i set from storage testing:stack iterator

$execute store success score 0 std.registries run function $(function) with storage testing:stack args
execute if score 0 std.registries matches 0 run return 0

data modify storage testing:stack args2 set value {b:1}
data modify storage testing:stack args2.a set from storage testing:stack iterator

execute store result storage testing:stack iterator int 1 run function testing:math/add with storage testing:stack args2

$data modify storage testing:stack args set value {args:$(args),function:"$(function)"}
data modify storage testing:stack args.iterator set from storage testing:stack iterator

function testing:loops/iteration-fail with storage testing:stack args