team leave @a[tag=games.tag.user]

effect clear @a[tag=games.tag.user]

execute as @a[tag=games.tag.user] run function games:lobby

tag @a[tag=games.tag.user] remove games.tag.user

function games:tag/fix_teams
schedule clear games:tag/display/show_roles
schedule clear games:tag/item_pickup/prevent_pickup
schedule clear games:tag/powerups/powerup_particles