#------------------------------
#TIME

#various tick timers
scoreboard players add #10Hz value 1
execute if score #10Hz value matches 2.. run scoreboard players set #10Hz value 0
scoreboard players add #5Hz value 1
execute if score #5Hz value matches 4.. run scoreboard players set #5Hz value 0
scoreboard players add #2Sec value 1
execute if score #2Sec value matches 40.. run scoreboard players set #2Sec value 0

#hotbar cycle
scoreboard players add #hotbarCycle value 1
execute if score #hotbarCycle value matches 8.. run scoreboard players set #hotbarCycle value 1

#global time
scoreboard players add #globalTime value 1
#------------------------------


#------------------------------
#GAME LOGIC

#game state index
function jcm:game/_state_index

#players tick themselves
execute as @a at @s run function jcm:player/_player_tick
#------------------------------


#------------------------------
#OBJECT MANAGEMENT

#all ticking objects do their thing
execute as @e[tag=tickObject] at @s run function jcm:object/_object_tick_index

#all validated objects die if no longer valid
execute if score #2Sec value matches 13 as @e[tag=checkValid] unless score @s valid matches -2147483648..2147483647 run scoreboard players set @s lifespan 0

#deal with all items drops
execute as @e[type=item] at @s run function jcm:common/item_entity_check
#------------------------------


#------------------------------
#DEV/DEBUG

#players in creative mode? run editor logic
execute if entity @a[gamemode=creative] run function jcm:_dev/_editor_global_tick

#player debug tags
#tag=forceGameplay -- prevents the game from returning to lobby if both player characters aren't present
#------------------------------


#------------------------------
#CLEANUP

#no xp orbs
kill @e[type=experience_orb]

#count down lifespan on temporary objects
execute as @e[scores={lifespan=-2147483648..2147483647}] at @s run function jcm:object/lifespan

#input cleanup
scoreboard players reset @a[scores={carrotInput=1..}] carrotInput
#------------------------------