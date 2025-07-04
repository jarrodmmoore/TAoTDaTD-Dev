#must match ID, otherwise return 0
execute unless score @s playerID = #checkID value run return 0
#=====

#go to player's position
tp @s ~ ~ ~

#stay alive
scoreboard players set @s lifespan 2

#we exist
return 1