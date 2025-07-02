#nifty effect
playsound minecraft:entity.creaking.death master @a[distance=..80] ~ ~ ~ 1.25 1.35 0.1
particle block{block_state:"packed_ice"} ~ ~1 ~ 0.25 0.5 0.25 1 20 force

#delete self
tag @s remove tickObject
scoreboard players set @s lifespan 0