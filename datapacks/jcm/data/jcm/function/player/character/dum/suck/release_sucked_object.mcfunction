tag @s remove suckedObject
scoreboard players reset @s holderID
execute if entity @e[type=tnt] run data merge entity @s {NoGravity:0b}
execute if entity @e[type=tnt] run data merge entity @s {Motion:[0.0,0.0,0.0]}
execute if entity @s[tag=box] run scoreboard players set @s airTime 1
tp @s ~ ~ ~