#> Arguments:
#> slot -> string

execute unless score 0 std.registries = 1 std.registries run return fail
$function testing:inventory/item-replace {Slot:$(Slot)}
return 0