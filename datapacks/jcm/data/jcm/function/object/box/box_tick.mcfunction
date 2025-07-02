#executed by the tnt that represents a box

#glow if players nearby
execute if entity @a[gamemode=adventure,distance=..6] on passengers if entity @s[tag=boxVisual] run data merge entity @s {Glowing:1b}
execute unless entity @a[gamemode=adventure,distance=..6] on passengers if entity @s[tag=boxVisual] run data merge entity @s {Glowing:0b}

#keep collision box on us
scoreboard players operation #checkID value = @s boxSpawnerUID
scoreboard players operation #instanceID value = @s boxInstance
execute as @e[type=block_display,tag=boxCollisionPos] if score @s boxSpawnerUID = #checkID value if score @s boxInstance = #instanceID value run function jcm:object/box/move_collision

#count up age
scoreboard players add @s age 1

#some things destroy crate
execute if entity @s[tag=crate] if block ~ ~ ~ #jcm:destroys_crate unless block ~ ~ ~ iron_trapdoor[powered=true] unless block ~ ~ ~ iron_trapdoor[half=top] run return run function jcm:object/box/crate_destroy
#=====

#do stuff when we land on ground
execute unless entity @s[tag=grabbedObject] run function jcm:object/box/ground_check
