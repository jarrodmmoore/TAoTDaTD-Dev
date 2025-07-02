#become character when playerCharacter score is set
scoreboard players add @s dPlayerCharacter 0
execute unless score @s playerCharacter = @s dPlayerCharacter run function jcm:player/character/update_character_choice
scoreboard players operation @s dPlayerCharacter = @s playerCharacter

#strong
effect give @a minecraft:strength infinite 1 true

#collect gold
execute store result score #itemCheck value run clear @s gold_nugget
execute if score #itemCheck value matches 1.. run function jcm:player/character/collected_gold
execute store result score #itemCheck value run clear @s gold_ingot
execute if score #itemCheck value matches 1.. run function jcm:player/character/collected_ingot

#save checkpoints when near them
execute if score #5Hz value matches 3 if entity @e[type=marker,tag=checkpoint,distance=..4] run function jcm:player/checkpoint/save_checkpoint

#die on spikes
execute if entity @s[gamemode=adventure] at @s if block ~ ~0.5 ~ iron_trapdoor[half=bottom,powered=false] run kill @s

#motion on dismount?
execute if entity @s[tag=getMotionOnDismount] run function jcm:player/character/try_get_dismount_motion

#special things may happen when you step on a barrier
execute store result score #barrierTest value run execute if block ~-.3 ~-.25 ~-.3 barrier
execute if block ~.3 ~-.25 ~-.3 barrier run scoreboard players add #barrierTest value 1
execute if block ~-.3 ~-.25 ~.3 barrier run scoreboard players add #barrierTest value 1
execute if block ~.3 ~-.25 ~.3 barrier run scoreboard players add #barrierTest value 1
execute if score #barrierTest value matches 1.. run function jcm:player/character/step_on_barrier

#generic inventory
execute if entity @s[gamemode=adventure] run function jcm:player/character/equipment_generic
scoreboard players remove @s[scores={interactNearby=1..}] interactNearby 1

#log what area we're in
execute unless score @s deathTime matches 1.. run function jcm:area/log_occupied_areas

#handle inventory display
function jcm:player/character/gui_display/_display_cycle