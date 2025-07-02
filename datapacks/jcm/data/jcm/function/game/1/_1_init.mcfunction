scoreboard players set #gameState value 1
bossbar set jcm:wait_to_play players
scoreboard players set @e[tag=lobbyProp] lifespan 60

#set difficulty
difficulty normal
execute if score #newGamePlus value matches 1 run difficulty hard

#night time
time set 18000

#all areas should get ticked at least once
function jcm:area/tick_all_areas

#all enemies will respawn asap!
scoreboard players reset * enemySpawn

#destroy blocks and let players fall
fill 8 201 -1 10 201 1 air destroy
fill -10 201 -1 -8 201 1 air destroy

#we watched the intro. let the record show
execute if score #gameProgress value matches 0 run scoreboard players set #gameProgress value 1

#guess what? i'm using this variable again.
#when players hit a certain point in the tunnel, send them back to checkpoint
scoreboard players set #introCutscene value 0

#all non-players are spectator now
execute as @a[gamemode=!creative] unless score @s playerCharacter matches 1..2 run gamemode spectator @s

#start playing music shortly
scoreboard players set @a currentArea 0
scoreboard players set @a dCurrentArea 0

#players need default scores
execute as @a[scores={playerCharacter=1}] run function jcm:player/character/dee/_dee_setup
execute as @a[scores={playerCharacter=2}] run function jcm:player/character/dum/_dum_setup