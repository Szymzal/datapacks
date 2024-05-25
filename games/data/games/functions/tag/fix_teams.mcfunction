execute as @a run attribute @s generic.attack_damage base set 1
execute as @a run attribute @s generic.movement_speed base set 0.1
effect clear @a glowing

execute as @a[team=games.tag.runners] run attribute @s generic.attack_damage base set 0
execute as @a[team=games.tag.tagged] run attribute @s generic.movement_speed base set 0.11

effect give @a[tag=games.tag.user] regeneration infinite 5 true
effect give @a[tag=games.tag.user] saturation infinite 1 true

effect give @a[team=games.tag.runners] glowing infinite 1 true