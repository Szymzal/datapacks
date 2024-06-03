execute store result score 0 games.tag run random value 0..2 minecraft:entities/player
execute as @s if score 0 games.tag matches 0 run function games:tag/powerups/effects/speed
execute as @s if score 0 games.tag matches 1 run function games:tag/powerups/effects/invisibility
execute as @s if score 0 games.tag matches 2 run function games:tag/powerups/effects/jump