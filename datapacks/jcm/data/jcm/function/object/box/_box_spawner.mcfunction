#remember to use variable
#boxInstance

#must have ID
execute unless score @s boxSpawnerUID matches -2147483648..2147483647 run function jcm:object/box/spawner_get_uid

#must be loaded, else exit
execute unless loaded ~ ~ ~ run return 0
#=====

#check if our spawned box exists and has players near it
scoreboard players set #success value 0
scoreboard players operation #checkID value = @s boxSpawnerUID
scoreboard players operation #instanceID value = @s boxInstance
execute as @e[type=tnt,tag=box] if score @s boxSpawnerUID = #checkID value if score @s boxInstance = #instanceID value run function jcm:object/box/box_found

#spawn new box if needed
execute if score #success value matches 0 if entity @a[gamemode=adventure,distance=..100] unless entity @a[gamemode=adventure,distance=..5] run function jcm:object/box/spawn_new_box