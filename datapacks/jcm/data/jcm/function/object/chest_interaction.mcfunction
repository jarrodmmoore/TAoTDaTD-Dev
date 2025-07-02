scoreboard players set #test value 0
execute on target run scoreboard players set #test value 1

execute if score #test value matches 1.. run return run function jcm:object/chest_open
#=====

#tell nearby players they can do a thing
scoreboard players set @a[gamemode=adventure,distance=..6] interactNearby 10