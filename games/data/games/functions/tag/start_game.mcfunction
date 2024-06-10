execute if score gameRunning games.state matches 1 run tellraw @s {"text":"Error: Another game is already running!","color":"red"}
execute if score gameRunning games.state matches 1 run return fail

scoreboard players set gameRunning games.state 1

tag @a[team=] add games.tag.user

team join games.tag.tagged @r[tag=games.tag.user,team=]
team join games.tag.runners @a[tag=games.tag.user,team=]

gamemode adventure @a[tag=games.tag.user,team=!games.tag.spectators]
gamemode spectator @a[team=games.tag.spectators]
difficulty peaceful
clear @a[tag=games.tag.user]

function games:tag/fix_teams
function games:tag/display/show_roles

function games:tag/freeze/freeze_players
execute as @a[tag=games.tag.user,team=!games.tag.spectators] run tp @s @e[type=minecraft:marker,tag=games.tag.spawn,sort=random,limit=1]
function games:tag/display/counter/start

execute if score gamelength games.tag.settings matches 1.. run schedule function games:tag/display/time_left 10s

function games:tag/item_pickup/prevent_pickup
function games:tag/powerups/powerup_particles
