advancement revoke @s only games:tag/tag_hit_run
tag @s add games.tag.change.tagged

schedule function games:tag/hit_detection/switch 2t

execute at @s run playsound minecraft:block.note_block.banjo ambient @a
execute at @s run particle minecraft:explosion ~ ~1 ~

attribute @s generic.attack_damage base set 1
attribute @s generic.movement_speed base set 0.11

effect clear @s glowing