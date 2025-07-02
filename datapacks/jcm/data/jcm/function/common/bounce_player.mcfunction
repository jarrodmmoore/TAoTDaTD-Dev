#bounce up based on last fall velocity
scoreboard players set $x player_motion.api.launch 0
#this is hella broken, switching to a static bounce instead
#scoreboard players operation $y player_motion.api.launch = @s recentFallVelocity
#scoreboard players operation $y player_motion.api.launch *= #-1 value
scoreboard players set $y player_motion.api.launch 7500
scoreboard players set $z player_motion.api.launch 0
execute unless score @s launchCooldown matches 1.. if score $y player_motion.api.launch matches 100.. run playsound minecraft:block.slime_block.fall master @a ~ ~ ~ 2 0.6
execute unless score @s launchCooldown matches 1.. if score $y player_motion.api.launch matches 100.. run function player_motion:api/launch_xyz
scoreboard players set @s launchCooldown 10
