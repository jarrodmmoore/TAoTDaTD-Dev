#kill areas
#--------------------
#pit
execute as @a[gamemode=adventure,x=37,y=-2,z=-64,dx=20,dy=5,dz=14,tag=onGround] unless score @s death matches 1 unless score @s deathTime matches 1.. run kill @s
#--------------------

#waterfall
execute if score #area1Water value matches 0 if block -22 13 3 water run fill -22 6 0 -17 13 3 air replace water
execute if score #area1Water value matches 0 if block -27 10 -2 redstone_block run function jcm:area/tutorial/open_waterfall

#button opens gate 1
#closed by default
execute if score #area1Button1 value matches 0 unless block 25 8 13 nether_brick_fence run fill 25 8 13 25 12 16 minecraft:nether_brick_fence
execute if score #area1Button1 value matches 0 unless block 17 2 -3 nether_brick_fence run fill 17 2 -3 17 7 5 minecraft:nether_brick_fence
#button activates it
execute if score #area1Button1 value matches 0 if block 20 7 14 redstone_block run scoreboard players set #area1Button1 value 1
execute if score #area1Button1 value matches 1..99 run function jcm:area/tutorial/raise_gates_1

#ball breaks wall from either side
execute if score #area1Wall1 value matches 0 unless block 29 1 -8 gravel run clone 29 29 -8 32 34 -8 29 1 -8 strict
execute if score #area1Wall1 value matches 0 positioned 30 2 -8 positioned ~.5 ~ ~ if entity @e[type=slime,tag=dumBall,scores={ballSpin=12..},distance=..4] run function jcm:area/tutorial/wall_1_break

#door connecting to waterworks
execute if score #area1AnvilDoor value matches 0 unless block 60 11 -41 polished_diorite_stairs run clone 60 32 -41 62 38 -36 60 11 -41 strict
execute if score #area1AnvilDoor value matches 0 if block 58 8 -50 redstone_block run scoreboard players set #area1AnvilDoor value 1
execute if score #area1AnvilDoor value matches 1..99 run function jcm:area/tutorial/raise_gate_2

#door where you need both people on buttons
execute if score #area1DuoDoor value matches 0 unless block 44 11 -81 nether_brick_fence run fill 44 11 -81 47 16 -81 minecraft:nether_brick_fence
execute if score #area1DuoDoor value matches 0 if block 40 10 -78 redstone_block if block 51 10 -78 redstone_block run scoreboard players set #area1DuoDoor value 1
execute if score #area1DuoDoor value matches 1..99 run function jcm:area/tutorial/raise_gate_3
