scoreboard objectives add games.state dummy

execute unless score gameRunning games.state matches 1 run scoreboard players set gameRunning games.state 0

function games:tag/load
