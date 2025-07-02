stopsound @s record
execute if entity @s[tag=musicDisabled] run return fail
#=====
$playsound minecraft:$(song) record @s ~ 100000 ~ 100000 1