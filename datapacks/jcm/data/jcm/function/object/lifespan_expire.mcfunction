#no effect on players
execute if entity @s[type=player] run return run scoreboard players reset @s lifespan
#=====

#temporary barrier removes barrier
execute if entity @s[tag=temporaryBarrier] run fill ~ ~ ~ ~ ~ ~ air replace barrier strict

#tp really far down
#(unless we have passengers, in which case we need something special)
scoreboard players set #passengers value 0
execute on passengers run scoreboard players add #passengers value 1
execute if score #passengers value matches 1.. on passengers run ride @s dismount
tp @s ~ ~-10000 ~

#die
scoreboard players reset @s lifespan
kill @s