#can't be riding something
execute on vehicle run return fail

#launch
scoreboard players set $strength player_motion.api.launch 6000
execute if score @s launchCooldown matches ..0 rotated ~ -45 run function player_motion:api/launch_looking
scoreboard players set @s launchCooldown 10
tag @s remove getMotionOnDismount