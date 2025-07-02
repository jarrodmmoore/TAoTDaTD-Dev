scoreboard players set #test value 2000
execute store result entity @s Motion[1] double 0.0004 run scoreboard players get #test value
playsound minecraft:block.slime_block.fall master @a ~ ~ ~ 2 0.6