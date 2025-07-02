gamemode spectator
scoreboard players reset @s
tp @s 0 202 -21 0 0

#go to a player if they exist
execute if entity @a[gamemode=adventure] run tp @s @e[limit=1,gamemode=adventure,sort=nearest]

#if nobody else is in the game, it will realize that soon and send all players back to lobby