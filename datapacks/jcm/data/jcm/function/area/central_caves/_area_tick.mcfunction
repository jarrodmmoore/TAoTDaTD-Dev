#kill areas
#--------------------
#fall down into chasm
execute as @a[gamemode=adventure,tag=onGround,scores={currentArea=2,coord_y=..-10}] unless score @s death matches 1 unless score @s deathTime matches 1.. run kill @s
#--------------------

#1-way iron gate
execute if score #area2IronGate value matches 0 unless block -36 11 -162 spruce_fence run fill -36 11 -162 -28 14 -162 spruce_fence
execute if score #area2IronGate value matches 0 if block -32 10 -165 redstone_block run scoreboard players set #area2IronGate value 1
execute if score #area2IronGate value matches 1..99 run function jcm:area/central_caves/open_iron_gate