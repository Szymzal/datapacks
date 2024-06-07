scoreboard objectives remove std.registries
scoreboard objectives add std.registries dummy

tellraw @a {"translate":"multiplayer.player.joined","with":["Herobrine"],"color":"yellow"}