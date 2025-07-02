#executed by the slime we're riding at 20Hz

#keep self and passenger alive
scoreboard players set @s lifespan 2
execute on passengers if entity @s[tag=secondRideSlot] run scoreboard players set @s lifespan 2
execute on passengers if entity @s[tag=dumBallInteract] run function jcm:player/character/dum/rollout/interaction_logic

#passenger can bring people aboard

#rotate us based on vector input
execute if score #inDirection value matches 1 run rotate @s ~ 0
execute if score #inDirection value matches 2 run rotate @s ~45 0
execute if score #inDirection value matches 3 run rotate @s ~90 0
execute if score #inDirection value matches 4 run rotate @s ~135 0
execute if score #inDirection value matches 5 run rotate @s ~180 0
execute if score #inDirection value matches 6 run rotate @s ~225 0
execute if score #inDirection value matches 7 run rotate @s ~270 0
execute if score #inDirection value matches 8 run rotate @s ~315 0

#sudden change of direction makes ball lose speed
scoreboard players operation #math value = #inDirection value
scoreboard players operation #math value -= @s ballLastDirection
execute if score #math value matches ..-1 run scoreboard players operation #math value *= #-1 value
execute if score #math value matches 5.. run function jcm:player/character/dum/rollout/hull_logic_corrected_angle_difference
scoreboard players operation @s ballSpin -= #math value
scoreboard players operation @s ballSpin -= #math value
scoreboard players operation @s ballSpin -= #math value
#remember the last direction we moved
scoreboard players operation @s ballLastDirection = #inDirection value

#control ball spin speed
scoreboard players add @s ballSpin 0
execute if score @s ballSpin matches ..4 run scoreboard players set @s ballSpin 5
execute if score #inDirection value matches 1..8 run scoreboard players add @s ballSpin 2
execute unless score #inDirection value matches 1..8 run scoreboard players remove @s ballSpin 1
scoreboard players remove @s[scores={ballSpin=6..}] ballSpin 1
scoreboard players remove @s[scores={ballSpin=15..}] ballSpin 1
scoreboard players remove @s[scores={ballSpin=19..}] ballSpin 1
scoreboard players remove @s[scores={ballSpin=21..}] ballSpin 1
scoreboard players remove @s[scores={ballSpin=25..}] ballSpin 1

#ballSpin determines visual spin direction
scoreboard players operation #spinSpeed value = @s ballSpin

#move the display entity to us and rotate it
execute rotated as @s as @e[type=item_display,distance=..20,tag=ballVisual] if score @s playerID = #checkID value run function jcm:player/character/dum/rollout/spin_animation

#motion!

#slope motion (very broken, don't use)
#scoreboard players set #test2 value 0
#execute if block ~1 ~-.1 ~ #jcm:not_solid unless block ~-1 ~-.1 ~ #jcm:not_solid run scoreboard players add #test2 value 1
#execute unless block ~1 ~-.1 ~ #jcm:not_solid if block ~-1 ~-.1 ~ #jcm:not_solid run scoreboard players add #test2 value 1
#execute if block ~ ~-.1 ~1 #jcm:not_solid unless block ~ ~-.1 ~-1 #jcm:not_solid run scoreboard players add #test2 value 1
#execute unless block ~ ~-.1 ~1 #jcm:not_solid if block ~ ~-.1 ~-1 #jcm:not_solid run scoreboard players add #test2 value 1
#execute if score #test2 value matches 1 run function jcm:player/character/dum/rollout/hull_logic_slope_1_force
#execute if score #test2 value matches 2.. run function jcm:player/character/dum/rollout/hull_logic_slope_2_force

#force from direct inputs
execute store result score #groundState value run execute if entity @s[nbt={OnGround:1b}]
execute if score #groundState value matches 1 if score #inDirection value matches 1..8 rotated as @s run function jcm:player/character/dum/rollout/hull_accel
execute if score #groundState value matches 0 if score #inDirection value matches 1..8 rotated as @s run function jcm:common/add_velocity_in_direction_2d {force:"0.00075"}
#extra burst of speed after landing on the ground
execute if score #groundState value matches 1 if score @s age matches 0 if score #inDirection value matches 1..8 rotated as @s run function jcm:common/add_velocity_in_direction_2d {force:"0.0065"}
execute if score #groundState value matches 1 if score @s age matches 0 run function jcm:player/character/dum/rollout/hull_logic_land
#remember previous grounded state
scoreboard players operation @s age = #groundState value

#damage stuff nearby
execute if score @s ballSpin matches 10.. as @e[tag=ballCanLaunchInline,distance=..2] at @s run damage @s 6 player_attack by @e[type=slime,tag=dumBall,distance=..3,limit=1,sort=nearest]
execute if score @s ballSpin matches 10.. as @a[gamemode=adventure,distance=..2,tag=onGround] unless score @s trampolineState matches 1.. unless score @s ballState matches 1.. at @s run damage @s 1 player_attack by @e[type=slime,tag=dumBall,distance=..3,limit=1,sort=nearest]
execute as @e[type=tnt,tag=crate,distance=..2] at @s if score @s age matches 40.. run function jcm:object/box/crate_destroy


#make noises on the ground
execute if score #inDirection value matches 1..8 run scoreboard players operation @s noiseTimer += @s ballSpin
execute if score @s noiseTimer matches 60.. run function jcm:player/character/dum/rollout/hull_roll_noise

#we did it
scoreboard players set #success value 1