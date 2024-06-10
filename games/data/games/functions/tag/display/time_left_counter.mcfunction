execute if score 0 games.tag.timeleft matches 1.. run scoreboard players remove 0 games.tag.timeleft 1
scoreboard players operation minutes games.tag.timeleft = 0 games.tag.timeleft
scoreboard players operation seconds games.tag.timeleft = 0 games.tag.timeleft
scoreboard players operation minutes games.tag.timeleft /= how-many-seconds-are-in-minute games.tag.timeleft
scoreboard players operation seconds games.tag.timeleft %= how-many-seconds-are-in-minute games.tag.timeleft
execute if score seconds games.tag.timeleft matches 10.. run bossbar set games:tag.timeleft name [{"text":"Time left: "},{"score":{"name":"minutes","objective":"games.tag.timeleft"}},{"text":":"},{"score":{"name":"seconds","objective":"games.tag.timeleft"}}]
execute if score seconds games.tag.timeleft matches 0..9 run bossbar set games:tag.timeleft name [{"text":"Time left: "},{"score":{"name":"minutes","objective":"games.tag.timeleft"}},{"text":":0"},{"score":{"name":"seconds","objective":"games.tag.timeleft"}}]

data modify storage games:tag args set value {}
execute store result storage games:tag args.value int 1 run scoreboard players get 0 games.tag.timeleft
function games:tag/display/bossbar/set_value with storage games:tag args

execute if score 0 games.tag.timeleft matches 1 run schedule function games:tag/stop_game 1s
execute if score 0 games.tag.timeleft matches 1.. run schedule function games:tag/display/time_left_counter 1s
