#feedback
scoreboard players set @s actionbarCooldown 100
title @s actionbar [{translate:"jcm.game.checkpoint_saved",color:yellow}]

#must be dee or dum
execute unless score @s playerCharacter matches 1..2 run return 0
#=====

#checkpoint does its thing
data modify storage jcm:func_args character set value "dee"
execute if score @s playerCharacter matches 2 run data modify storage jcm:func_args character set value "dum"
execute as @e[type=marker,tag=checkpoint,distance=..4,sort=nearest] at @s run function jcm:player/checkpoint/save_checkpoint_go with storage jcm:func_args