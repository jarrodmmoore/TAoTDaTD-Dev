#can't do anything if a weird state
execute if score @s ballState matches 1.. run return 0
execute if score @s inflateState matches 1.. run return 0
#=====

#pull objects in
tag @s add self
execute if score @s playerSize matches ..0 if score #10Hz value matches 0 positioned ^ ^1 ^3 as @e[distance=..3,tag=canSuck,tag=!grabbedObject] positioned as @s facing entity @a[tag=self,limit=1,sort=nearest] eyes run function jcm:player/character/dum/suck/pull_object_in
execute if score @s playerSize matches 1.. if score #10Hz value matches 0 positioned ^ ^1 ^3 as @e[distance=..3,tag=canSuck,tag=!grabbedObject] positioned as @s facing entity @a[tag=self,limit=1,sort=nearest] eyes run function jcm:player/character/dum/suck/pull_object_in_weak
tag @s remove self

#feedback
execute if score @s playerSize matches ..0 if score #10Hz value matches 0 run playsound minecraft:entity.breeze.inhale master @a ~ ~ ~ 0.8 1
execute if score @s playerSize matches 1.. if score #10Hz value matches 0 run playsound minecraft:entity.breeze.inhale master @a ~ ~ ~ 0.8 1.25
#suck particles
execute store result score #coord_x value run data get entity @s Pos[0] 1
execute if score #coord_x value matches ..-1 run scoreboard players add #coord_x value 1
execute store result score #coord_y value run data get entity @s Pos[1] 1
scoreboard players add #coord_y value 1
execute store result score #coord_z value run data get entity @s Pos[2] 1
execute if score #coord_z value matches ..-1 run scoreboard players add #coord_z value 1
#macro for trail particle
execute store result storage jcm:func_args x int 1 run scoreboard players get #coord_x value
execute store result storage jcm:func_args y int 1 run scoreboard players get #coord_y value
execute store result storage jcm:func_args z int 1 run scoreboard players get #coord_z value
function jcm:player/character/dum/suck/suck_particle_macro with storage jcm:func_args

#look for objects
execute if score @s playerSize matches ..0 positioned ~ ~1 ~ if entity @e[distance=..1,tag=canSuck,tag=!grabbedObject] run function jcm:player/character/dum/suck/suck_get_object
