playsound minecraft:entity.iron_golem.hurt master @a[distance=..16] ~ ~ ~ 0.4 0.7 0.4
particle item_slime ~ ~.25 ~ 1.5 0.2 1.5 0 20 force
execute if score #inDirection value matches 1..8 run scoreboard players add @s ballSpin 2

#did we land on a barrier? bounce out, probably
execute store result score #barrierTest value run execute if block ~-1.25 ~-.25 ~-1.25 barrier
execute if block ~ ~-.25 ~-1.25 barrier run scoreboard players add #barrierTest value 1
execute if block ~1.25 ~-.25 ~-1.25 barrier run scoreboard players add #barrierTest value 1

execute if block ~1.25 ~-.25 ~ barrier run scoreboard players add #barrierTest value 1
execute if block ~ ~-.25 ~ barrier run scoreboard players add #barrierTest value 1
execute if block ~1.25 ~-.25 ~ barrier run scoreboard players add #barrierTest value 1

execute if block ~1.25 ~-.25 ~1.25 barrier run scoreboard players add #barrierTest value 1
execute if block ~ ~-.25 ~1.25 barrier run scoreboard players add #barrierTest value 1
execute if block ~1.25 ~-.25 ~1.25 barrier run scoreboard players add #barrierTest value 1

execute if score #barrierTest value matches 1.. if entity @e[type=marker,tag=temporaryBarrier,distance=..3] run return run function jcm:common/add_raw_force_3d {x:"0",y:"2500",z:"0"}
execute if score #barrierTest value matches 1.. if entity @e[type=marker,tag=cauldron,distance=..3] run return run function jcm:common/add_raw_force_3d {x:"0",y:"2500",z:"0"}