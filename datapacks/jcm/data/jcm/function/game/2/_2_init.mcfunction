scoreboard players set #gameState value 2
bossbar set jcm:wait_to_play players
kill @e[tag=tempText]

#activate newgame+ if player selected that
scoreboard players set #newGamePlus value 0
execute unless score #gameProgress value matches 1.. if block -6 201 8 redstone_lamp[lit=true] run scoreboard players set #newGamePlus value 1

#no more titles
title @a subtitle [""]
title @a title [""]
title @a actionbar [""]

#all non-players are spectator now
execute as @a[gamemode=!creative] unless score @s playerCharacter matches 1..2 run gamemode spectator @s

#intro cutscene plays if no game progress and NOT ng+
scoreboard players set #introCutscene value 0
execute if score #gameProgress value matches 1.. run scoreboard players set #introCutscene value 100000
execute if score #newGamePlus value matches 1 run scoreboard players set #introCutscene value 100000

#lights out
setblock 9 202 0 air
setblock -9 202 0 air