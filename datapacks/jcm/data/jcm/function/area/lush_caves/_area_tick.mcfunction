#multi-button gate
execute if score #area4GatePuzzle value matches 0 unless block 118 7 -117 dark_oak_fence run fill 118 7 -117 124 13 -117 dark_oak_fence
execute if score #area4GatePuzzle value matches 0 if block 124 6 -92 redstone_block if block 111 8 -102 redstone_block if block 112 12 -109 redstone_block run scoreboard players set #area4GatePuzzle value 1
execute if score #area4GatePuzzle value matches 1..99 run function jcm:area/lush_caves/raise_gate_1

#breakable wall
execute if score #area4Wall1 value matches 0 unless block 127 -6 -85 cobblestone_stairs run clone 126 -21 -85 127 -18 -80 126 -6 -85 strict
execute positioned 128 -6 -85 if score #area4Wall1 value matches 0 if entity @e[type=slime,tag=dumBall,scores={ballSpin=12..},dx=2,dy=2,dz=5] run function jcm:area/lush_caves/wall_1_break