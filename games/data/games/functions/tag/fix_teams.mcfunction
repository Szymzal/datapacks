execute as @a[tag=] run attribute @s generic.attack_damage base set 1
execute as @a[tag=] run attribute @s generic.movement_speed base set 0.1
execute as @a[tag=] run attribute @s generic.jump_strength base set 0.42
effect clear @a[tag=]

execute as @a[team=games.tag.runners] run attribute @s generic.attack_damage base set 0

execute as @a[tag=games.tag.user,team=!games.tag.spectators,scores={games.tag.counter.1=1..}] run attribute @s generic.movement_speed base set 0
execute as @a[team=games.tag.tagged,scores={games.tag.counter.1=0}] run attribute @s generic.movement_speed base set 0.11
execute as @a[team=games.tag.runners,scores={games.tag.counter.1=0}] run attribute @s generic.movement_speed base set 0.1

execute as @a[tag=games.tag.user,team=!games.tag.spectators,scores={games.tag.counter.1=1..}] run attribute @s generic.jump_strength base set 0
execute as @a[tag=games.tag.user,team=!games.tag.spectators,scores={games.tag.counter.1=0}] run attribute @s generic.jump_strength base set 0.42

execute as @a[team=games.tag.tagged,scores={games.tag.counter.1=1..}] run attribute @s generic.attack_damage base set 0
execute as @a[team=games.tag.tagged,scores={games.tag.counter.1=0}] run attribute @s generic.attack_damage base set 1

effect give @a[tag=games.tag.user,team=!games.tag.spectators] regeneration infinite 5 true
effect give @a[tag=games.tag.user,team=!games.tag.spectators] saturation infinite 1 true
effect give @a[tag=games.tag.user] night_vision infinite 0 true

effect give @a[team=games.tag.runners] glowing infinite 0 true
