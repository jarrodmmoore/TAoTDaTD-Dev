#if no checkpoint is saved, exit out
scoreboard players set #test value 0
$execute store result score #test value run data get storage jcm:data $(character)_checkpoint[0] 1
$execute unless score #test value matches 1.. run return run function jcm:player/checkpoint/set_initial_checkpoint {character:"$(character)"}
#=====

#checkpoint was saved! read it and warp to coords
$data modify storage jcm:func_args x set from storage jcm:data $(character)_checkpoint[1]
$data modify storage jcm:func_args y set from storage jcm:data $(character)_checkpoint[2]
$data modify storage jcm:func_args z set from storage jcm:data $(character)_checkpoint[3]
function jcm:common/warp_to_coordinates_macro with storage jcm:func_args

#blindness for a second
effect give @s blindness 2 1 true