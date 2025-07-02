#wait .5 seconds before doing anything (avoids a minecraft / server issues with respawning)
scoreboard players add @s deathTime 1
execute if score @s deathTime matches ..9 run return 0
#=====

#cleanup
scoreboard players reset @s deathTime

#must be gameState 1
execute unless score #gameState value matches 1 run return 0
#=====

#do the thing
effect clear @s
effect give @s blindness 2 1 true
function jcm:player/checkpoint/try_warp_to_checkpoint