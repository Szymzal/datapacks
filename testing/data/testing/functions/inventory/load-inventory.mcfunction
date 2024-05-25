#> Arguments
#> - name -> string

$execute store success score 0 std.registries run data get storage testing:stack savedStorages.$(name)
execute if score 0 std.registries matches 0 run return fail
$data modify storage testing:stack storage set from storage testing:stack savedStorages.$(name)
function testing:inventory/copy-inventory