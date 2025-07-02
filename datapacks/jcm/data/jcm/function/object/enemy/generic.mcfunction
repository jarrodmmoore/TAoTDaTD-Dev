#executed by a generic enemy at 20Hz

#special code for certain enemies...
execute if entity @s[type=spider] if entity @e[type=slime,tag=dumBall,distance=..2] run kill @s
execute if entity @s[tag=canKillMount] if entity @a[distance=..12] if entity @e[tag=playerMount,distance=..2] run function jcm:object/enemy/wither_skeleton_kill_ball
execute if entity @s[tag=ballCanLaunch] if entity @e[type=slime,tag=dumBall,distance=..2] run function jcm:object/enemy/get_launched_by_ball
execute if entity @s[type=iron_golem] run function jcm:object/enemy/iron_golem

#despawn after a while
scoreboard players add @s enemyAge 1
execute if score @s enemyAge matches 3000.. unless entity @a[gamemode=adventure,distance=..40] run scoreboard players reset @s enemySpawn

#go away if no longer valid
execute unless score @s enemySpawn matches 1.. run tag @s remove tickObject
execute unless score @s enemySpawn matches 1.. run scoreboard players set @s lifespan 0