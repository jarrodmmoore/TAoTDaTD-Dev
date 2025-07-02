#kill areas
#--------------------
#spiky ravine
execute as @a[gamemode=adventure,tag=onGround,scores={coord_x=6..42,coord_y=0..10,coord_z=-207..-192}] unless score @s death matches 1 unless score @s deathTime matches 1.. run kill @s
execute as @a[gamemode=adventure,tag=onGround,scores={coord_x=43..86,coord_y=-5..5,coord_z=-209..-192}] unless score @s death matches 1 unless score @s deathTime matches 1.. run kill @s
#--------------------
