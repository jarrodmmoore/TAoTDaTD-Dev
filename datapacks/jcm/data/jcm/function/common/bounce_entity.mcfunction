#y
execute store result score #test value run data get entity @s Motion[1] 2500
scoreboard players operation #test value *= #-1 value
scoreboard players add #test value 100
execute store result entity @s Motion[1] double 0.0004 run scoreboard players get #test value