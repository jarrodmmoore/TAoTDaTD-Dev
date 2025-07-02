#where am i
execute store result score @s coord_x run data get entity @s Pos[0] 1
execute store result score @s coord_y run data get entity @s Pos[1] 1
execute store result score @s coord_z run data get entity @s Pos[2] 1
execute store result score @s coord_yaw run data get entity @s Rotation[0] 1
scoreboard players operation @s coord_yaw %= #360 value
execute store result score @s coord_pitch run data get entity @s Rotation[1] 1

#what's happening
tag @s remove onGround
execute if entity @s[nbt={OnGround:1b}] run tag @s add onGround

tag @s remove inWater
execute if block ~ ~ ~ water run tag @s add inWater
execute if block ~ ~ ~ #jcm:waterloggable[waterlogged=true] run tag @s add inWater

#oh god i'm FALLING
scoreboard players add @s airTime 1
execute if entity @s[tag=onGround] run scoreboard players set @s airTime 0
execute if entity @s[tag=inWater] run scoreboard players set @s airTime 0

execute store result score #test value run data get entity @s Motion[1] 12500
execute if score #test value matches ..-1000 run scoreboard players operation @s recentFallVelocity = #test value