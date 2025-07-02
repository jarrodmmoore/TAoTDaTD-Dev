#kill areas
#--------------------
#out of bounds
execute as @a[gamemode=adventure,scores={currentArea=6,coord_y=..-3}] unless entity @s[tag=!onGround,tag=!inWater] unless score @s death matches 1 unless score @s deathTime matches 1.. run kill @s
#--------------------

#gate
execute if score #area6Gate value matches 0 unless block 123 7 -187 oak_fence run fill 123 7 -187 128 15 -187 oak_fence
execute if score #area6Gate value matches 0 if block 126 6 -192 redstone_block run scoreboard players set #area6Gate value 1
execute if score #area6Gate value matches 1..99 run function jcm:area/arid_cliff/raise_gate