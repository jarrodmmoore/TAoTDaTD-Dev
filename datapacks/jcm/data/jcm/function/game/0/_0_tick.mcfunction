#executed 20Hz by system

#players have no equipment here

#players die if the fall into pits
execute as @a[gamemode=adventure] if score @s coord_y matches ..198 unless score @s death matches 1 unless score @s deathTime matches 1.. run kill @s

#make sure fake dee and dum exist
execute unless entity @a[gamemode=adventure,scores={playerCharacter=1}] run function jcm:game/0/fake_tweedle_dee
execute unless entity @a[gamemode=adventure,scores={playerCharacter=2}] run function jcm:game/0/fake_tweedle_dum

#indicators on where to stand to join game
execute as @e[type=marker,tag=tweedleDeeStart] at @s run function jcm:game/0/dee_start_point
execute as @e[type=marker,tag=tweedleDumStart] at @s run function jcm:game/0/dum_start_point

#ticks on players in the cages
execute as @a[gamemode=adventure,scores={playerCharacter=1..}] run function jcm:game/0/tick_player_in_cage

#flick the erase progress level? reset progress
execute if block 6 202 8 lever[powered=true] positioned 6 201 8 run function jcm:game/0/erase_game_progress


#count up time to start once both players are selected
bossbar set jcm:wait_to_play players @a[scores={playerCharacter=1..2}]
execute store result score #test value run execute if entity @a[scores={playerCharacter=1}]
execute if entity @a[scores={playerCharacter=2}] run scoreboard players add #test value 1000
execute unless score #test value matches 1001 unless entity @a[tag=forceGameplay,scores={playerCharacter=1..2}] run scoreboard players set #countdown value 121

#count down time to start
scoreboard players remove #countdown value 1
scoreboard players operation #math value = #countdown value
scoreboard players operation #math value /= #20 value
execute store result bossbar jcm:wait_to_play value run scoreboard players get #math value
execute if score #countdown value matches ..0 run function jcm:game/2/_2_init