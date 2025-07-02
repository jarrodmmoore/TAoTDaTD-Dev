#executed 20Hz by system

#gameplay

#make sure there are two players. if not, send back to lobby
scoreboard players set #test value 0
execute as @a[scores={playerCharacter=1}] run scoreboard players add #test value 10000
execute as @a[scores={playerCharacter=2}] run scoreboard players add #test value 1
execute unless score #test value matches 10001 unless entity @a[tag=forceGameplay] run return run function jcm:game/0/return_to_lobby_abandon
#=====

#intro cutscene
execute if score #introCutscene value matches ..99 run function jcm:game/1/intro

#count how long we've been playing
execute unless score #playTime value matches 2147483647.. run scoreboard players add #playTime value 1

#handle triggers on players
execute if score #5Hz value matches 1 run function jcm:game/1/triggers

#spawn objects on one-time spawners
execute if score #2Sec value matches 0 as @e[type=marker,tag=spawnObject] unless score @s itemSpawn matches 1 at @s run function jcm:object/spawn/_spawn_index

#calculate total gold
scoreboard players operation #totalGold value = #deeGold value
scoreboard players operation #totalGold value += #dumGold value
#display info
scoreboard players operation #displayIngot value = #totalGold value
scoreboard players operation #displayIngot value /= #9 value
scoreboard players operation #displayNugget value = #totalGold value
scoreboard players operation #displayNugget value %= #9 value
execute if score #displayIngot value matches 64.. run scoreboard players set #displayIngot value 64

#run logic for areas that have a player in them
function jcm:area/run_active_areas
function jcm:area/clear_occupied_areas