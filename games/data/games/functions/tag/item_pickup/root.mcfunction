advancement revoke @s only games:tag/item_pickup
clear @s potion
tellraw @a [{"selector":"@s","color":"gold"},{"text":" picked up powerup!","color":"gray"}]
effect give @s speed 3 0 true