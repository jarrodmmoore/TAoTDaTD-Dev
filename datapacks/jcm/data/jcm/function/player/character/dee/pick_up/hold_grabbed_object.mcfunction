#executed by the object we're holding

#don't hold me in a ceiling please
scoreboard players set #count1 value 0
execute if block ~ ~2.5 ~ #jcm:not_solid run scoreboard players set #count1 value 1
execute if block ~ ~2.5 ~ #jcm:not_solid if block ~ ~3.5 ~ #jcm:not_solid run scoreboard players set #count1 value 2
execute if block ~ ~2.5 ~ #jcm:not_solid if block ~ ~3.5 ~ #jcm:not_solid if block ~ ~4.5 ~ #jcm:not_solid run scoreboard players set #count1 value 3
execute if score #trampolineState value matches 1.. if block ~ ~2.5 ~ #jcm:not_solid if block ~ ~3.5 ~ #jcm:not_solid if block ~ ~4.5 ~ #jcm:not_solid if block ~ ~5.5 ~ #jcm:not_solid run scoreboard players set #count1 value 4
execute unless score #count1 value matches 1..3 run tp @s ~ ~ ~
execute if score #count1 value matches 1 positioned ~ ~1 ~ run tp @s ~ ~ ~
execute if score #count1 value matches 2 positioned ~ ~2 ~ run tp @s ~ ~ ~
execute if score #count1 value matches 3 positioned ~ ~3 ~ run tp @s ~ ~ ~
execute if score #count1 value matches 4 positioned ~ ~4 ~ run tp @s ~ ~ ~

#feedback
execute at @s run particle end_rod ~ ~1 ~ 0.8 0.8 0.8 0.025 1 force
execute store result score #random value run random value 1..100
execute if score #random value matches 1 at @s run playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 2 1
execute if score #random value matches 2 at @s run playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 2 1.1
execute if score #random value matches 3 at @s run playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 2 1.2

#keep player holder alive as long as it has a player on it
execute if entity @s[tag=playerPickUpMount] on passengers if entity @s[type=player,tag=canPickUp] on vehicle run scoreboard players set @s lifespan 3

#we exist
scoreboard players add #success value 1