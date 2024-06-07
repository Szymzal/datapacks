#> Makes operation a + b 
#> and returns the result
#> 
#> Arguments: 
#> a -> int
#> b -> int
#> Returns:
#> int

$scoreboard players set 0 std.registries $(a)
$return run scoreboard players add 0 std.registries $(b)