#take damage
execute store result score #success value run damage @s 8 player_attack by @e[type=slime,tag=dumBall,distance=..3,limit=1,sort=nearest]

#if we took damage, get sent flying
#execute if score #succes value matches 1.. facing entity @e[type=slime,tag=dumBall,distance=..3,limit=1,sort=nearest] eyes rotated ~180 -45 run function jcm:common/add_velocity_in_direction_3d {force:"0.05"}