team leave @a[tag=games.tag.user]

effect clear @a[tag=games.tag.user]

gamemode adventure @a[tag=games.tag.user]

execute as @a[tag=games.tag.user] run function games:lobby

scoreboard players set 0 games.tag.timeleft 0
scoreboard players set @a[tag=games.tag.user] games.tag.counter.1 0
scoreboard players set @a[tag=games.tag.user] games.tag.counter.2 0

tag @a[tag=games.tag.user] remove games.tag.user

function games:tag/fix_teams
schedule clear games:tag/display/show_roles
schedule clear games:tag/item_pickup/prevent_pickup
schedule clear games:tag/powerups/powerup_particles
schedule clear games:tag/powerups/random_spawns
schedule clear games:tag/powerups/spawn
schedule clear games:tag/display/time_left_counter

bossbar set games:tag.timeleft players

kill @e[type=item,tag=games.tag.effect.item]

scoreboard players set gameRunning games.state 0
