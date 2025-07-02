#executed by the husk we're riding at 20Hz

#keep self and passenger alive
scoreboard players set @s lifespan 2
execute on passengers if entity @s[tag=spacerModel] run scoreboard players set @s lifespan 2

#make noise when damaged
execute store result score #heath value run data get entity @s Health
execute if score @s entityHealth matches -2147483648..2147483647 if score #health value < @s entityHealth run playsound entity.player.hurt master @a
scoreboard players operation @s entityHealth = #heath value

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

#we did it
scoreboard players set #success value 1
#..unless we're in water. in which case, die
execute if block ~ ~ ~ water run scoreboard players set #success value 0
execute if block ~ ~ ~ #jcm:waterloggable[waterlogged=true] run scoreboard players set #success value 0
#die on spikes
execute positioned ~ ~.5 ~ if block ~ ~ ~ #jcm:kills_mount unless block ~ ~ ~ iron_trapdoor[powered=true] unless block ~ ~ ~ iron_trapdoor[half=top] run scoreboard players set #success value 0
#also die if something is obstructing us
execute unless block ~ ~2 ~ #jcm:not_solid run scoreboard players set #success value -1
execute unless block ~ ~3 ~ #jcm:not_solid run scoreboard players set #success value -1
execute unless block ~ ~4 ~ #jcm:not_solid run scoreboard players set #success value -1
execute unless block ~ ~5 ~ #jcm:not_solid run scoreboard players set #success value -1
execute unless block ~ ~6 ~ #jcm:not_solid run scoreboard players set #success value -1
execute unless block ~ ~7 ~ #jcm:not_solid run scoreboard players set #success value -1