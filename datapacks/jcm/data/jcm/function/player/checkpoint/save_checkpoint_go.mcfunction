#executed by a marker representing the campfire we just used

#assign checkpointUID if we don't have one yet
execute unless score @s checkpointUID matches -2147483648..2147483647 run function jcm:player/checkpoint/save_checkpoint_assign_uid

#save data globally for this character
$execute store result storage jcm:data $(character)_checkpoint[0] int 1 run scoreboard players get @s checkpointUID

#save coordinates
#x
execute store result score #var value run data get entity @s Pos[0]
$execute store result storage jcm:data $(character)_checkpoint[1] int 1 run scoreboard players get #var value
#y
execute store result score #var value run data get entity @s Pos[1]
$execute store result storage jcm:data $(character)_checkpoint[2] int 1 run scoreboard players get #var value
#z+1 so we're not directly on the fire
execute store result score #var value run data get entity @s Pos[2]
scoreboard players add #var value 1
$execute store result storage jcm:data $(character)_checkpoint[3] int 1 run scoreboard players get #var value
