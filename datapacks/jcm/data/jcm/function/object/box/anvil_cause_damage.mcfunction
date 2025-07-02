tag @s add self

#more damage the longer we fall
execute if score @s airTime matches ..10 as @e[type=!shulker,distance=..1,tag=!self] run damage @s 1 falling_anvil at ~ ~ ~
execute if score @s airTime matches 11..15 as @e[type=!shulker,distance=..1.25,tag=!self] run damage @s 3 falling_anvil at ~ ~ ~
execute if score @s airTime matches 16..20 as @e[type=!shulker,distance=..1.5,tag=!self] run damage @s 5 falling_anvil at ~ ~ ~
execute if score @s airTime matches 21..25 as @e[type=!shulker,distance=..1.75,tag=!self] run damage @s 7 falling_anvil at ~ ~ ~
execute if score @s airTime matches 26..30 as @e[type=!shulker,distance=..2,tag=!self] run damage @s 9 falling_anvil at ~ ~ ~
execute if score @s airTime matches 31.. as @e[type=!shulker,distance=..2,tag=!self] run damage @s 11 falling_anvil at ~ ~ ~

tag @s remove self