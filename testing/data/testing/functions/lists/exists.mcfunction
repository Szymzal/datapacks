$execute store success score 0 std.registries run data get storage testing:stack list[$(i)]
execute if score 0 std.registries matches 0 run return fail
$execute store result storage testing:stack list-length int 1 run function testing:math/add {a:$(i),b:1}
return 0