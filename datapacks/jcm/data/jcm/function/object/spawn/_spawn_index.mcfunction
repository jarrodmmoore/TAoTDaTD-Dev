#do nothing if not loaded
execute unless loaded ~ ~ ~ run return 0
#=====


execute if entity @s[tag=spawnGoldNugget] run function jcm:object/spawn/gold_nugget
execute if entity @s[tag=spawnChest] run function jcm:object/spawn/chest


#done
scoreboard players set @s itemSpawn 1