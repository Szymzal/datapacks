effect give @a[tag=games.tag.user,team=!games.tag.spectators] slowness infinite 10 true
execute as @a[tag=games.tag.user,team=!games.tag.spectators] run attribute @s generic.jump_strength base set 0

execute as @a[team=games.tag.tagged] run attribute @s generic.attack_damage base set 0
