execute unless score @s age matches 1.. if entity @a[gamemode=adventure,distance=..20] unless entity @e[type=skeleton,tag=deeClone,distance=..20] run function jcm:object/enemy/iron_golem_anger

#aggro again every 10 seconds
execute if score @s age matches 1.. run scoreboard players add @s age 1
execute if score @s age matches 200.. run scoreboard players reset @s age