#at least one clone exists
scoreboard players add #success value 1

#rotate like owner
rotate @s ~ ~

#too many clones? die
execute if score #success value matches 11.. run return run function jcm:object/dee_clone_vanish
#=====

#die if on spikes
execute if block ~ ~0.5 ~ iron_trapdoor[half=bottom,powered=false] run return run function jcm:object/dee_clone_vanish
#=====

#don't do anything for a second
execute if score @s age matches ..29 run return 0
#=====

#dance, monkey

#rotate us based on vector input
execute unless score #inDirection value matches 2..8 run rotate @s ~ 0
execute if score #inDirection value matches 2 run rotate @s ~45 0
execute if score #inDirection value matches 3 run rotate @s ~90 0
execute if score #inDirection value matches 4 run rotate @s ~135 0
execute if score #inDirection value matches 5 run rotate @s ~180 0
execute if score #inDirection value matches 6 run rotate @s ~225 0
execute if score #inDirection value matches 7 run rotate @s ~270 0
execute if score #inDirection value matches 8 run rotate @s ~315 0

#force from direct inputs
execute store result score #groundState value run execute if entity @s[nbt={OnGround:1b}]
execute if score #groundState value matches 1 if score #inDirection value matches 1..8 rotated as @s run function jcm:common/add_velocity_in_direction_2d {force:"0.004"}
execute if score #groundState value matches 0 if score #inDirection value matches 1..8 rotated as @s run function jcm:common/add_velocity_in_direction_2d {force:"0.0006"}

#we can jump when on ground
execute if score #groundState value matches 1 if score #jumpInput value matches 1 run function jcm:common/add_raw_force_3d {x:0,y:1250,z:0}
