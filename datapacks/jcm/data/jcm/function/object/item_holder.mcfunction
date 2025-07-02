scoreboard players set #test value 0
execute on passengers run scoreboard players add #test value 1

#die if there's nothing riding us
execute if score #test value matches 0 run scoreboard players set @s lifespan 0
execute if score #test value matches 0 run tag @s remove itemHolder