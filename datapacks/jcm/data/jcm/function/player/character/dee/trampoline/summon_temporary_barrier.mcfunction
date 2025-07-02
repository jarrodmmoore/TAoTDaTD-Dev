#do nothing if block obstructed or something would get griefed
execute unless block ~ ~ ~ air unless block ~ ~ ~ barrier run return 0
#execute if block ~ ~-1 ~ #jcm:no_barrier_grief run return 0
#execute if block ~ ~1 ~ #jcm:no_barrier_grief run return 0
#execute if block ~1 ~ ~ #jcm:no_barrier_grief run return 0
#execute if block ~-1 ~ ~ #jcm:no_barrier_grief run return 0
#execute if block ~ ~ ~1 #jcm:no_barrier_grief run return 0
#execute if block ~ ~ ~-1 #jcm:no_barrier_grief run return 0
#^actually, we can just avoid problems via strict placement mode
#=====

#set barrier
execute store result score #test value run execute if block ~ ~ ~ air
setblock ~ ~ ~ barrier strict

#particles
execute store result score #random value run random value 1..20
execute if score #random value matches 1 run particle end_rod ~ ~-.5 ~ 0.3 0 0.3 0.01 1 force

#barrier marker already here? keep it alive, then
execute if entity @e[type=marker,tag=temporaryBarrier,distance=..0.5] run return run scoreboard players set @e[type=marker,tag=temporaryBarrier,distance=..0.5] lifespan 3
#=====

#summon barrier marker if we need one
#(note: won't work if there was a barrier block before we did anything)
execute if score #test value matches 1.. run summon marker ~ ~ ~ {Tags:["temporaryBarrier","setme"]}
scoreboard players set @e[tag=setme,type=marker,distance=..1] lifespan 3
tag @e[tag=setme,type=marker,distance=..1] remove setme