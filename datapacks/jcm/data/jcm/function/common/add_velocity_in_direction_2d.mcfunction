#project target forwards
$execute positioned ^ ^ ^$(force) if loaded ~ ~ ~ run summon marker ~ ~ ~ {UUID:[I;5,6,7,8]}
execute store result score #coord_x2 value run data get entity 00000005-0000-0006-0000-000700000008 Pos[0] 100000
#execute store result score #coord_y2 value run data get entity 00000005-0000-0006-0000-000700000008 Pos[1] 100000
execute store result score #coord_z2 value run data get entity 00000005-0000-0006-0000-000700000008 Pos[2] 100000
kill 00000005-0000-0006-0000-000700000008

#find difference between our coordinates and projected target
execute store result score #coord_x value run data get entity @s Pos[0] 100000
execute store result score #coord_z value run data get entity @s Pos[2] 100000
scoreboard players operation #coord_x2 value -= #coord_x value
scoreboard players operation #coord_z2 value -= #coord_z value

#x
execute store result score #test value run data get entity @s Motion[0] 2500
scoreboard players operation #test value += #coord_x2 value
execute store result entity @s Motion[0] double 0.0004 run scoreboard players get #test value
#z
execute store result score #test2 value run data get entity @s Motion[2] 2500
scoreboard players operation #test2 value += #coord_z2 value
execute store result entity @s Motion[2] double 0.0004 run scoreboard players get #test2 value