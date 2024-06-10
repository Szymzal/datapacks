execute as @a[tag=games.tag.user,scores={games.tag.counter.2=1..},limit=1] run schedule function games:tag/display/counter/runners/second_countdown/counter 1s

execute as @a[team=games.tag.runners,scores={games.tag.counter.2=3..}] run title @s title {"text":"Uważaj na siebie!","color":"blue"}
execute as @a[team=games.tag.spectators,scores={games.tag.counter.2=3..}] run title @s title {"text":"Uciekający zostali uwolnieni!","color":"blue"}
execute as @a[team=!games.tag.tagged,scores={games.tag.counter.2=1..2}] run title @s title {"text":""}
execute as @a[team=!games.tag.tagged,scores={games.tag.counter.2=1..}] run title @s subtitle [{"text":"Goniący zostaną uwolnieni za ","color":"gray"},{"score":{"name":"@s","objective":"games.tag.counter.2"},"color":"gold"},{"text":" sekund","color":"gold"}]

scoreboard players remove @a[tag=games.tag.user,scores={games.tag.counter.2=1..}] games.tag.counter.2 1

execute as @a[team=!games.tag.tagged,scores={games.tag.counter.2=1}] run schedule function games:tag/display/counter/runners/second_countdown/end 2s
