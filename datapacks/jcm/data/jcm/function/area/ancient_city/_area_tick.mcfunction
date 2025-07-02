#kill areas
#--------------------
#fall down
execute as @a[gamemode=adventure,scores={currentArea=3,coord_y=..-18}] unless entity @s[tag=!onGround,tag=!inWater] unless score @s death matches 1 unless score @s deathTime matches 1.. run kill @s
#--------------------


#smashy wall
execute if score #area3BreakWall value matches 0 unless block -39 5 -46 deepslate_brick_stairs run clone -39 -8 -46 -39 -4 -40 -39 5 -46 strict
execute if score #area3BreakWall value matches 0 if entity @e[type=slime,tag=dumBall,scores={ballSpin=15..},x=-41,y=4,z=-47,dx=6,dy=5,dz=8] run function jcm:area/ancient_city/break_wall

#button to open gate
execute if score #area3Gate value matches 0 unless block -96 9 -57 nether_brick_fence run fill -96 9 -57 -96 13 -52 nether_brick_fence
execute if score #area3Gate value matches 0 if block -96 17 -34 redstone_block run scoreboard players set #area3Gate value 1
execute if score #area3Gate value matches 1..99 run function jcm:area/ancient_city/open_castle_gate

#clone puzzle
execute if score #area3ClonePuzzle value matches 0 if block -106 7 -46 redstone_block if block -113 7 -49 redstone_block if block -127 8 -46 redstone_block if block -107 7 -60 redstone_block if block -124 8 -59 redstone_block \
    positioned -109 8 -55 run function jcm:area/ancient_city/solved_clone_puzzle


#5Hz only beyond this point
execute unless score #5Hz value matches 0 run return 0
#=====

#or button
execute store result score #check1 value run execute if block -45 11 -35 redstone_block
execute if block -45 11 -21 redstone_block run scoreboard players add #check1 value 1
execute if score #check1 value matches 1.. unless block -40 11 -32 redstone_block run fill -40 11 -32 -40 11 -24 redstone_block
execute if score #check1 value matches ..0 if block -40 11 -32 redstone_block run fill -40 11 -32 -40 11 -24 stone

#crate button
execute store result score #check1 value run execute if block -61 6 -26 redstone_block
execute if score #check1 value matches 1.. unless block -62 3 -17 redstone_block run fill -62 3 -17 -60 3 -15 redstone_block
execute if score #check1 value matches ..0 if block -62 3 -17 redstone_block run fill -62 3 -17 -60 3 -15 stone