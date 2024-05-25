tag @a add games.tag.user

team join games.tag.tagged @r[tag=games.tag.user]
team join games.tag.runners @a[tag=games.tag.user,team=]

gamemode adventure @a[tag=games.tag.user]
clear @a[tag=games.tag.user]

function games:tag/fix_teams
function games:tag/display/show_roles

function games:tag/freeze/freeze_players
execute as @a[tag=games.tag.user] run tp @s @e[type=minecraft:marker,tag=games.tag.spawn,sort=random,limit=1]
function games:tag/display/counter/start

function games:tag/item_pickup/prevent_pickup
function games:tag/powerups/powerup_particles