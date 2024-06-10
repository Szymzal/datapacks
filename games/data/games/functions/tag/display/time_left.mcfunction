schedule clear games:tag/display/time_left_counter
scoreboard players operation 0 games.tag.timeleft = gamelength games.tag.settings

bossbar set games:tag.timeleft players @a[tag=games.tag.user]

data modify storage games:tag args set value {}
execute store result storage games:tag args.value int 1 run scoreboard players get gamelength games.tag.settings
function games:tag/display/bossbar/set_max with storage games:tag args

function games:tag/display/time_left_counter
