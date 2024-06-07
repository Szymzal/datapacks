$execute store success score 0 std.registries run function testing:inventory/hotbarslots {Slot:$(Slot)}
execute if score 0 std.registries matches 1 run return 0

data remove storage testing:stack args
$execute store result storage testing:stack args.Slot int 1 run function testing:math/sub {a:$(Slot),b:9}
execute store success score 0 std.registries run function testing:inventory/inventoryslots with storage testing:stack args
execute if score 0 std.registries matches 1 run return 0

$function testing:inventory/specialslots {Slot:$(Slot)}