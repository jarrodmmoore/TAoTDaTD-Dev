#bounce up based on last fall velocity
scoreboard players set $x player_motion.api.launch 0
scoreboard players set $y player_motion.api.launch 5000
scoreboard players set $z player_motion.api.launch 0
execute unless score @s launchCooldown matches 1.. if score $y player_motion.api.launch matches 100.. if score @s playerSize matches ..0 run playsound minecraft:entity.slime.jump_small master @a ~ ~ ~ 1 .5
execute unless score @s launchCooldown matches 1.. if score $y player_motion.api.launch matches 100.. if score @s playerSize matches 1.. run playsound minecraft:entity.slime.jump_small master @a ~ ~ ~ 1 .75
execute unless score @s launchCooldown matches 1.. if score $y player_motion.api.launch matches 100.. run function player_motion:api/launch_xyz
scoreboard players set @s launchCooldown 10