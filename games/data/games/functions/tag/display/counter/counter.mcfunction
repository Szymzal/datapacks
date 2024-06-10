execute as @a[tag=games.tag.user,scores={games.tag.counter.1=1..},limit=1] run schedule function games:tag/display/counter/counter 1s

execute as @a[tag=games.tag.user,scores={games.tag.counter.1=4..}] run title @s title {"score":{"name":"@s","objective":"games.tag.counter.1"},"color":"white"}
execute as @a[tag=games.tag.user,scores={games.tag.counter.1=3}] run title @s title {"score":{"name":"@s","objective":"games.tag.counter.1"},"color":"green"}
execute as @a[tag=games.tag.user,scores={games.tag.counter.1=2}] run title @s title {"score":{"name":"@s","objective":"games.tag.counter.1"},"color":"yellow"}
execute as @a[tag=games.tag.user,scores={games.tag.counter.1=1}] run title @s title {"score":{"name":"@s","objective":"games.tag.counter.1"},"color":"red"}
execute as @a[team=games.tag.tagged,scores={games.tag.counter.1=3..5}] run title @s subtitle {"text":"Uciekający zostali uwolnieni!","color":"blue"}
execute as @a[team=games.tag.tagged,scores={games.tag.counter.1=1..2}] run title @s subtitle {"text":""}

scoreboard players remove @a[tag=games.tag.user,scores={games.tag.counter.1=1..}] games.tag.counter.1 1

execute as @a[team=!games.tag.tagged,scores={games.tag.counter.1=1}] run schedule function games:tag/display/counter/runners/first_countdown/end 2s
execute as @a[team=games.tag.tagged,scores={games.tag.counter.1=1}] run schedule function games:tag/display/counter/tagged/end 2s
