scoreboard players reset @s playerCharacter
scoreboard players reset @s dPlayerCharacter
gamemode spectator @s
scoreboard players reset @s quit
team leave @s

tellraw @a [{translate:"jcm.game.player_quit",with:[{selector:"@s"}]}]