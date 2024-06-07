$data modify storage testing:stack iterator set value $(iterator)
execute store result score 0 std.registries run data get storage testing:stack iterator
$scoreboard players set 1 std.registries $(loops)
execute if score 0 std.registries >= 1 std.registries run return 0
$data modify storage testing:stack args set value $(args)
data modify storage testing:stack args.i set from storage testing:stack iterator
$function $(function) with storage testing:stack args
data modify storage testing:stack args2 set value {b:1}
data modify storage testing:stack args2.a set from storage testing:stack iterator
execute store result storage testing:stack iterator int 1 run function testing:math/add with storage testing:stack args2
$data modify storage testing:stack args set value {args:$(args),function:"$(function)",loops:$(loops)}
data modify storage testing:stack args.iterator set from storage testing:stack iterator
function testing:loops/iteration with storage testing:stack args