scoreboard players set #success value 0

#kill clones if we sneak
execute if predicate jcm:sneak run return run function jcm:player/character/dee/clone/destroy_all
#=====

#read our motion and apply it to clones
function jcm:common/get_input_vector
scoreboard players set #jumpInput value 0
execute if predicate jcm:jump unless score @s trampolineState matches 1.. run scoreboard players add #jumpInput value 1

scoreboard players operation #checkID value = @s playerID
#execute store result score #motion_x value run data get entity @s Motion[0] 100000
execute store result score #motion_y value run data get entity @s Motion[1] 100000
#execute store result score #motion_z value run data get entity @s Motion[2] 100000
execute as @e[type=skeleton,tag=deeClone,distance=..80,sort=nearest] if score @s playerID = #checkID value positioned as @s run function jcm:player/character/dee/clone/manage_clones_set_velocity

#no more clones? stop worrying, then
execute if score #success value matches 0 run scoreboard players set @s cloneState 0