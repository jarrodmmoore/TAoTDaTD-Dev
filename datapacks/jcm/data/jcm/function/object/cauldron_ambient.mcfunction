#random particles and noises
execute store result score #random value run random value 1..15
scoreboard players operation @s age += #random value
execute if score @s age matches 50.. run playsound minecraft:block.lava.pop master @a ~ ~1 ~
execute if score @s age matches 50.. run particle lava ~ ~2 ~ 0.75 0.25 0.75 1 1 force @a
execute if score @s age matches 50.. run scoreboard players set @s age 0

execute store result score #random value run random value 1..20
execute if score #random value matches 1 run playsound minecraft:block.lava.ambient master @a ~ ~1 ~

#particles!
execute if entity @s[tag=blueCauldron] run particle end_rod ~ ~1.75 ~ 0.5 0.05 0.5 0.05 1 force
execute if entity @s[tag=orangeCauldron] run particle firework ~ ~1.75 ~ 0.5 0.05 0.5 0.05 1 force