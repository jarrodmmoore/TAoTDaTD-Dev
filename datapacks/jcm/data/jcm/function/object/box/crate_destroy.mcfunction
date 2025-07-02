#we die
scoreboard players set @s lifespan 0
tag @s remove tickObject
tag @s remove box

#associated entities die
execute on passengers if entity @s[type=item_display,tag=boxVisual] run scoreboard players set @s lifespan 0

#feedback
particle block{block_state:"bamboo_mosaic"} ~ ~.5 ~ 0.5 0.5 0.5 1 30 force
playsound entity.iron_golem.damage master @a ~ ~ ~ 1.5 1