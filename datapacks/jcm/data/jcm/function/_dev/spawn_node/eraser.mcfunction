#feedback
function jcm:common/explode

#delete nearby nodes
execute as @e[type=marker,tag=spawnObject,tag=spawnGoldNugget,distance=..2] at @s run scoreboard players remove totalNuggets debug 1
execute as @e[type=marker,tag=spawnObject,distance=..2] at @s run particle large_smoke ~ ~.25 ~ 0 0 0 0.02 3 force
scoreboard players set @e[type=marker,tag=spawnObject,distance=..2] lifespan 0
scoreboard players set @e[tag=eraseable,distance=..2] lifespan 0