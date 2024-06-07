$scoreboard players set 0 std.registries $(Slot)
scoreboard players set 1 std.registries 0
scoreboard players set 2 std.registries 8
execute if score 0 std.registries < 1 std.registries run return fail
execute if score 0 std.registries > 2 std.registries run return fail
$function testing:inventory/item-replace {Slot:"hotbar.$(Slot)"}
return 0