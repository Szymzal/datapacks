advancement revoke @s only games:tag/item_pickup
clear @s potion
tellraw @a [{"selector":"@s","color":"gold"},{"text":" picked up powerup!","color":"gray"}]
execute as @s run function games:tag/powerups/effects/random