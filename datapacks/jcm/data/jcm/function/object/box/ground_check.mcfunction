tag @s remove onGround
execute unless block ~ ~-.1 ~ #jcm:not_solid run tag @s add onGround
execute if block ~ ~-.1 ~ barrier run tag @s add onGround

#impact
execute if score @s airTime matches 3.. if entity @s[tag=onGround] run function jcm:object/box/impact

#update air time
scoreboard players add @s[tag=!onGround] airTime 1
scoreboard players set @s[tag=onGround] airTime 0