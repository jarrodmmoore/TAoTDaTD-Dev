#kill areas
#--------------------
#spiky ravine
execute as @a[gamemode=adventure,tag=onGround,scores={coord_x=6..42,coord_y=0..10,coord_z=-207..-192}] unless score @s death matches 1 unless score @s deathTime matches 1.. run kill @s
execute as @a[gamemode=adventure,tag=onGround,scores={coord_x=43..86,coord_y=-5..5,coord_z=-209..-192}] unless score @s death matches 1 unless score @s deathTime matches 1.. run kill @s

#fall down into chasm
execute as @a[gamemode=adventure,tag=onGround,scores={currentArea=7,coord_y=..-10}] unless score @s death matches 1 unless score @s deathTime matches 1.. run kill @s
#--------------------

#clone puzzle
execute if score #area7PuzzleSolved value matches 0 \
    if block 42 17 -190 redstone_block \
    if block 68 16 -173 redstone_block \
    if block 41 17 -156 redstone_block \
    if block 15 16 -174 redstone_block \
    positioned 42 17 -174 run function jcm:area/golden_gardens/solved_clone_puzzle
