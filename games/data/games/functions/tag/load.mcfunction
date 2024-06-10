scoreboard objectives add games.tag dummy
scoreboard objectives add games.tag.counter.1 dummy
scoreboard objectives add games.tag.counter.2 dummy
scoreboard objectives add games.tag.timeleft dummy
scoreboard objectives add games.tag.settings dummy

execute unless score gamelength games.tag.settings matches 0 run scoreboard players set gamelength games.tag.settings 300
scoreboard players set how-many-seconds-are-in-minute games.tag.timeleft 60

bossbar add games:tag.timeleft {"text":"Time left:"}

team add games.tag.tagged
team add games.tag.runners
team add games.tag.spectators

team modify games.tag.tagged color red
team modify games.tag.runners color blue
team modify games.tag.spectators color gray

team modify games.tag.runners nametagVisibility never
team modify games.tag.tagged nametagVisibility never

function games:tag/fix_teams
