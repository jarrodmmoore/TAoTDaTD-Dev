#kick out if on cooldown
execute if score @s launchCooldown matches 1.. run return 0
#=====

playsound minecraft:entity.player.hurt_on_fire master @a ~ ~ ~ 1.25 1
playsound minecraft:entity.player.hurt_on_fire master @a ~ ~ ~ 1.25 0.8

#get send
scoreboard players set $x player_motion.api.launch 0
scoreboard players set $y player_motion.api.launch 12000
scoreboard players set $z player_motion.api.launch 0
execute unless score @s launchCooldown matches 1.. run function player_motion:api/launch_xyz
scoreboard players set @s launchCooldown 10

#get smoked
scoreboard players set @s smokeTime 10