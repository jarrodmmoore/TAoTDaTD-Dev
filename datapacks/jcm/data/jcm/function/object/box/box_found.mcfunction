#success if we're right next to home
execute if entity @s[distance=..1] run scoreboard players set #success value 1
#success if within 65m of a player
execute at @s if entity @a[gamemode=adventure,distance=..70] run scoreboard players set #success value 1
#success if we're being stored way below the map
execute if entity @s[tag=suckedObject] run scoreboard players set #success value 1

#set lifespan while we're here
data merge entity @s {fuse:100}
scoreboard players set @s lifespan 7
execute on passengers if entity @s[tag=boxVisual] run scoreboard players set @s lifespan 7