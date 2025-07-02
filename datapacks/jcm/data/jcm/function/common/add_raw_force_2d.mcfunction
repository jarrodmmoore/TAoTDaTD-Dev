$scoreboard players set #coord_x2 value $(x)
$scoreboard players set #coord_z2 value $(z)

#x
execute store result score #test value run data get entity @s Motion[0] 2500
scoreboard players operation #test value += #coord_x2 value
execute store result entity @s Motion[0] double 0.0004 run scoreboard players get #test value
#z
execute store result score #test value run data get entity @s Motion[2] 2500
scoreboard players operation #test value += #coord_z2 value
execute store result entity @s Motion[2] double 0.0004 run scoreboard players get #test value