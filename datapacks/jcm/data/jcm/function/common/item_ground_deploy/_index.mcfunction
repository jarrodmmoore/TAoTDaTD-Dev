#execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{tnt:1b}}}}] run function jmc:common/item_ground_deploy/tnt

#fizzle on ground?
execute if entity @s[tag=fizzleOnGround] at @s run particle large_smoke ~ ~.25 ~ 0.1 0.1 0.1 0.05 5

#delete once we're done
scoreboard players set @s lifespan 1
scoreboard players reset @s age