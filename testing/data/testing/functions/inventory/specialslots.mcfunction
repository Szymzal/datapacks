$scoreboard players set 0 std.registries $(Slot)

scoreboard players set 1 std.registries 100
execute store success score 1 std.registries run function testing:inventory/replace-item {Slot:"armor.feet"}
execute if score 1 std.registries matches 1 run return 0

scoreboard players set 1 std.registries 101
execute store success score 1 std.registries run function testing:inventory/replace-item {Slot:"armor.legs"}
execute if score 1 std.registries matches 1 run return 0

scoreboard players set 1 std.registries 102
execute store success score 1 std.registries run function testing:inventory/replace-item {Slot:"armor.chest"}
execute if score 1 std.registries matches 1 run return 0

scoreboard players set 1 std.registries 103
execute store success score 1 std.registries run function testing:inventory/replace-item {Slot:"armor.head"}
execute if score 1 std.registries matches 1 run return 0

scoreboard players set 1 std.registries -106
execute store success score 1 std.registries run function testing:inventory/replace-item {Slot:"weapon.offhand"}