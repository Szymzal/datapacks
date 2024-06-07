scoreboard objectives add games.tag dummy
scoreboard objectives add games.tag.counter.1 dummy
scoreboard objectives add games.tag.counter.2 dummy

team add games.tag.tagged
team add games.tag.runners

team modify games.tag.tagged color red
team modify games.tag.runners color blue

team modify games.tag.runners nametagVisibility never
team modify games.tag.tagged nametagVisibility never

function games:tag/fix_teams
