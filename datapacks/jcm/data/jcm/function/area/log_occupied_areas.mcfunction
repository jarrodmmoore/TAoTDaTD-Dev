#executed by a player

#figure out when we're in an area based on wool at y=-64
execute if block ~ -64 ~ white_wool if score @s coord_y matches ..25 run scoreboard players set @s currentArea 1
execute if block ~ -64 ~ orange_wool run scoreboard players set @s currentArea 2
execute if block ~ -64 ~ red_wool run scoreboard players set @s currentArea 3
execute if block ~ -64 ~ lime_wool run scoreboard players set @s currentArea 4
execute if block ~ -64 ~ blue_wool run scoreboard players set @s currentArea 5
execute if block ~ -64 ~ magenta_wool run scoreboard players set @s currentArea 6
execute if block ~ -64 ~ yellow_wool run scoreboard players set @s currentArea 7
execute if block ~ -64 ~ gray_wool run scoreboard players set @s currentArea 8
execute if block ~ -64 ~ light_gray_wool run scoreboard players set @s currentArea 9

#tick the current area
execute if score @s currentArea matches 1 run scoreboard players set #area1Tutorial value 1
execute if score @s currentArea matches 2 run scoreboard players set #area2CentralCaverns value 1
execute if score @s currentArea matches 3 run scoreboard players set #area3AncientCity value 1
execute if score @s currentArea matches 4 run scoreboard players set #area4LushCaves value 1
execute if score @s currentArea matches 5 run scoreboard players set #area5WaterWorks value 1
execute if score @s currentArea matches 6 run scoreboard players set #area6AridCliff value 1
execute if score @s currentArea matches 7 run scoreboard players set #area7GoldenGarden value 1
execute if score @s currentArea matches 8 run scoreboard players set #area8GustyTower value 1
execute if score @s currentArea matches 9 run scoreboard players set #area9PaleMaze value 1

#might play music in a new area
execute unless score @s currentArea = @s dCurrentArea run function jcm:area/enter_new_area
scoreboard players operation @s dCurrentArea = @s currentArea