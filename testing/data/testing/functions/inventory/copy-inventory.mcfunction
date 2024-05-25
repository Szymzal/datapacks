#> Copy inventory

setblock -116 102 -149 minecraft:barrel{Lock:"§yes"} keep
clear @s

data modify storage testing:stack args set value {}
data modify storage testing:stack args.list set from storage testing:stack storage
execute store result storage testing:stack length int 1 run function testing:lists/length with storage testing:stack args

data modify storage testing:stack args set value {function:"testing:inventory/storage"}
data modify storage testing:stack args.loops set from storage testing:stack length
data modify storage testing:stack args.args set value {}
function testing:loops/for-loop with storage testing:stack args

item replace block -116 102 -149 container.0 with air
setblock -116 102 -149 air destroy