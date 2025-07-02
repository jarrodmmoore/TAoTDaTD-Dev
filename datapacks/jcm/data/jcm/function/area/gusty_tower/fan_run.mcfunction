#spin
rotate @s ~45 0

#levitate players
execute positioned ~-1 ~ ~-1 as @a[gamemode=adventure,dx=2,dy=10,dz=2] run function jcm:area/gusty_tower/fan_affect_player

#particles at #10Hz please
execute if score #10Hz value matches 1 run return 0
#=====

#blade noise
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 0.5 0.75

#generate particles
execute store result score #coord_x value run data get entity @s Pos[0] 1
execute store result score #coord_y value run data get entity @s Pos[1] 1
scoreboard players add #coord_y value 80
execute store result score #coord_z value run data get entity @s Pos[2] 1
#macro for trail particle
execute store result storage jcm:func_args x int 1 run scoreboard players get #coord_x value
execute store result storage jcm:func_args y int 1 run scoreboard players get #coord_y value
execute store result storage jcm:func_args z int 1 run scoreboard players get #coord_z value
function jcm:area/gusty_tower/fan_run_particle_macro with storage jcm:func_args